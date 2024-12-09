module.exports = {
  mySidebar: [
    'index',
    'release-notes',
    'introduction',
    {
      type: 'category',
      label: 'MFT Agent',
      collapsed: true,
      items: [
        'agent-system-requirements',
        'agent-installation',
        'agent-endpoint-definitions',
        'agent-encryption-definitions',
        'agent-group-definitions',
        'agent-task-definitions',
      ],
    },
    {
      type: 'category',
      label: 'MFT Server',
      collapsed: true,
      items: [
        'server-system-requirements',
        'server-installation',
        'server-triggers',
        'server-file-sharing',
        'server-virtual-folders',
      ],
    },
    'security',
    'trouble-shooting',
    'architecture',
  ],
};
