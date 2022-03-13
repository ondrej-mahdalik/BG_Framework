using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FWConfigurator
{
    public class SettingsController
    {
        private string ConfigFilePath { get; }

        public SettingsController(string configFilePath)
        {
            ConfigFilePath = configFilePath;
        }

        public void LoadSettings()
        {

        }

        public bool SaveSettings()
        {

        }
    }
}
