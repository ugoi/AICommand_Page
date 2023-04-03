function copyToClipboard() {
    const installCommand = document.getElementById('install-command');
    const textarea = document.createElement('textarea');
    textarea.value = installCommand.innerText;
    document.body.appendChild(textarea);
    textarea.select();
    document.execCommand('copy');
    document.body.removeChild(textarea);
  
    // Show a temporary message to indicate the command was copied
    const copyButton = document.getElementById('copy-button');
    const originalButtonText = copyButton.innerText;
    copyButton.innerText = 'Copied!';
    setTimeout(() => {
      copyButton.innerText = originalButtonText;
    }, 1500);
  }
  
  function copyUninstallCommandToClipboard() {
    const uninstallCommand = document.getElementById('uninstall-command');
    const textarea = document.createElement('textarea');
    textarea.value = uninstallCommand.innerText;
    document.body.appendChild(textarea);
    textarea.select();
    document.execCommand('copy');
    document.body.removeChild(textarea);
  
    // Show a temporary message to indicate the command was copied
    const copyButton = document.getElementById('uninstall-copy-button');
    const originalButtonText = copyButton.innerText;
    copyButton.innerText = 'Copied!';
    setTimeout(() => {
      copyButton.innerText = originalButtonText;
    }, 1500);
  }
  