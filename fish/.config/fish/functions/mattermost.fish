function mattermost --wraps='flatpak run com.mattermost.Desktop' --description 'alias mattermost=flatpak run com.mattermost.Desktop'
  flatpak run com.mattermost.Desktop $argv
        
end
