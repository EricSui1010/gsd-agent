#!/bin/bash

# GSD Agent Update Script for Linux/Mac

REPO_URL="https://github.com/your-username/gsd-agent"
LOCAL_VERSION_FILE=".trae/VERSION"
REMOTE_VERSION_URL="$REPO_URL/raw/main/.trae/VERSION"
TEMP_DIR=".gsd-update-temp"
ACTION="${1:-check}"

get_local_version() {
    if [ -f "$LOCAL_VERSION_FILE" ]; then
        cat "$LOCAL_VERSION_FILE"
    else
        echo "0.0.0"
    fi
}

get_remote_version() {
    curl -s --connect-timeout 10 "$REMOTE_VERSION_URL" 2>/dev/null || echo ""
}

compare_versions() {
    local local="$1"
    local remote="$2"
    
    if [ "$local" = "$remote" ]; then
        echo 0
        return
    fi
    
    local IFS='.'
    local i local_parts remote_parts
    read -ra local_parts <<< "$local"
    read -ra remote_parts <<< "$remote"
    
    for ((i=0; i<${#local_parts[@]} || i<${#remote_parts[@]}; i++)); do
        local local_num=${local_parts[i]:-0}
        local remote_num=${remote_parts[i]:-0}
        
        if ((remote_num > local_num)); then
            echo 1
            return
        elif ((remote_num < local_num)); then
            echo -1
            return
        fi
    done
    
    echo 0
}

update_gsd_agent() {
    echo -e "\033[36m正在更新 GSD Agent...\033[0m"
    
    # 清理临时目录
    rm -rf "$TEMP_DIR"
    
    # 克隆最新版本
    echo "下载最新版本..."
    git clone "$REPO_URL" "$TEMP_DIR" 2>/dev/null
    
    if [ ! -d "$TEMP_DIR/.trae" ]; then
        echo -e "\033[31m下载失败！\033[0m"
        return 1
    fi
    
    # 备份当前版本
    if [ -d ".trae" ]; then
        backup_dir=".trae.backup.$(date +%Y%m%d%H%M%S)"
        echo "备份当前版本到 $backup_dir"
        cp -r ".trae" "$backup_dir"
    fi
    
    # 更新文件
    echo "更新文件..."
    cp -r "$TEMP_DIR/.trae/"* ".trae/"
    
    # 清理
    rm -rf "$TEMP_DIR"
    
    echo -e "\033[32m更新完成！\033[0m"
    return 0
}

# 主逻辑
case "$ACTION" in
    check)
        echo -e "\033[36m========================================\033[0m"
        echo -e "\033[36mGSD Agent 版本检查\033[0m"
        echo -e "\033[36m========================================\033[0m"
        
        local_version=$(get_local_version)
        echo "当前版本: $local_version"
        
        remote_version=$(get_remote_version)
        if [ -n "$remote_version" ]; then
            echo "最新版本: $remote_version"
            
            comparison=$(compare_versions "$local_version" "$remote_version")
            
            if [ "$comparison" -gt 0 ]; then
                echo ""
                echo -e "\033[32m发现新版本！\033[0m"
                echo -e "\033[33m运行 './.gsd/update.sh update' 进行更新\033[0m"
            elif [ "$comparison" -lt 0 ]; then
                echo -e "\033[33m当前版本比远程版本新？\033[0m"
            else
                echo -e "\033[32m已是最新版本\033[0m"
            fi
        fi
        ;;
    
    update)
        update_gsd_agent
        ;;
    
    version)
        local_version=$(get_local_version)
        echo "GSD Agent v$local_version"
        ;;
    
    *)
        echo -e "\033[33m用法:\033[0m"
        echo "  ./.gsd/update.sh check   # 检查更新"
        echo "  ./.gsd/update.sh update  # 执行更新"
        echo "  ./.gsd/update.sh version # 显示版本"
        ;;
esac
