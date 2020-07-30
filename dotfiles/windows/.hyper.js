module.exports = {
  config: {
    fontSize: 14,
    fontFamily: "'SF Mono Powerline', Menlo, 'DejaVu Sans Mono', Consolas, 'Lucida Console', monospace",
    lineHeight: 1.2,

    shell: "C:\\Windows\\System32\\wsl.exe",
    // Necessary as the default `shellArgs` is `["--login"]` which is
    // incompatible with the Windows Subsystem for Linux 2 (WSL2) shell.
    shellArgs: [],
  },

  // Plugins to install from NPM.
  //
  // @example:
  //
  //   [hyper-solarized-dark]
  plugins: ["hyper-quit", "hyper-solarized-dark"],
};
