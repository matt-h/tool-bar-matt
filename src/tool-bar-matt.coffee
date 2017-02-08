module.exports =
    deactivate: ->
        @toolBar?.removeItems()

    consumeToolBar: (toolBar) ->
        @toolBar = toolBar 'tool-bar-basic'

        @toolBar.addButton
            icon: 'document-text'
            callback: 'application:open-file'
            tooltip: 'Open File'
            iconset: 'ion'

        if atom.packages.loadedPackages['project-manager']
            @toolBar.addButton
                'icon': 'file-submodule'
                'tooltip': 'List projects'
                'callback': 'project-manager:list-projects'

        @toolBar.addSpacer()

        @toolBar.addButton
            'icon': 'indent'
            'callback': 'editor:auto-indent'
            'tooltip': 'Auto indent (selection)'
            'iconset': 'fa'

        @toolBar.addButton
            'icon': 'level-up'
            'callback': 'editor:fold-all'
            'tooltip': 'Fold all'
            'iconset': 'fa'

        @toolBar.addButton
            'icon': 'level-down'
            'callback': 'editor:unfold-all'
            'tooltip': 'Unfold all'
            'iconset': 'fa'

        @toolBar.addButton
            'icon': 'hashtag'
            'callback': 'editor:toggle-line-comments'
            'tooltip': 'Comment'
            'iconset': 'fa'

        if atom.packages.loadedPackages['atom-beautify']
            @toolBar.addButton
                'icon': 'star'
                'callback': 'atom-beautify:beautify-editor'
                'tooltip': 'Beautify'
                'iconset': 'fa'

        if atom.inDevMode()

            @toolBar.addSpacer()

            @toolBar.addButton
                'icon': 'refresh'
                'callback': 'window:reload'
                'tooltip': 'Reload Window'
                'iconset': 'ion'

            @toolBar.addButton
                'icon': 'bug'
                'callback': 'window:toggle-dev-tools'
                'tooltip': 'Toggle Developer Tools'

        if atom.packages.loadedPackages['git-plus']
            @toolBar.addSpacer()
            @toolBar.addButton
                'icon' : 'git-plain'
                'callback' : 'git-plus:menu'
                'tooltip' : 'Git plus'
                'iconset' : 'devicon'

        if atom.packages.loadedPackages['git-time-machine']
            @toolBar.addButton
                'icon' : 'map'
                'callback' : 'git-time-machine:toggle'
                'tooltip' : 'git-time-machine'
                'iconset' : 'ion'

        if atom.packages.loadedPackages['merge-conflicts']
            @toolBar.addButton
                'tooltip' : 'Merge Conflicts'
                'dependency' : 'merge-conflicts'
                'callback' : 'merge-conflicts:detect'
                'icon' : 'code-fork'
                'iconset' : 'fa'

        if atom.packages.loadedPackages['git-status']
            @toolBar.addButton
                'tooltip' : 'Git status'
                'dependency' : 'git-status'
                'callback' : 'git-status:toggle'
                'icon' : 'git-compare'

        if atom.packages.loadedPackages['open-on-github']
            @toolBar.addButton
                'tooltip' : 'Open on Github'
                'dependency' : 'open-on-github'
                'callback' : 'open-on-github:file'
                'icon' : 'octoface'

        if atom.packages.loadedPackages['script']
            @toolBar.addSpacer()
            @toolBar.addButton
                'icon': 'play'
                'callback': 'script:run'
                'tooltip': 'Run script'
                'iconset': 'fa'
            @toolBar.addButton
                'icon': 'step-forward'
                'callback': 'script:run-by-line-number'
                'tooltip': 'Run by Line Number'
                'iconset': 'fa'
            @toolBar.addButton
                'icon': 'stop'
                'callback': 'script:kill-process'
                'tooltip': 'Stop script'
                'iconset': 'fa'
            @toolBar.addButton
                'icon': 'gears'
                'callback': 'script:run-options'
                'tooltip': 'Configure script'
                'iconset': 'fa'

        @toolBar.addSpacer()
        if atom.packages.loadedPackages['markdown-preview-plus']
            @toolBar.addButton
                'icon': 'markdown'
                'callback': 'markdown-preview-plus:toggle'
                'tooltip': 'Markdown Preview'
        else
            @toolBar.addButton
                'icon': 'markdown'
                'callback': 'markdown-preview:toggle'
                'tooltip': 'Markdown Preview'
        if atom.packages.loadedPackages['atom-html-preview']
            @toolBar.addButton
                'icon': 'globe'
                'callback': 'atom-html-preview:toggle'
                'tooltip': 'HTML Preview'
        if atom.packages.loadedPackages['atom-live-server']
            @toolBar.addButton
                'icon': 'globe'
                'callback': 'atom-live-server:start-3000'
                'tooltip': 'HTML Preview'

        @toolBar.addSpacer()
        @toolBar.addButton
            icon: 'navicon-round'
            callback: 'command-palette:toggle'
            tooltip: 'Toggle Command Palette'
            iconset: 'ion'
        @toolBar.addButton
            'icon': 'gear'
            'callback': 'settings-view:open'
            'tooltip': 'Open Settings View'
