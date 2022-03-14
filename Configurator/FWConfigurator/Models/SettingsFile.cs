using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FWConfigurator.Models
{
    public record SettingsFile(WelcomeMessageSetting WelcomeMessageSetting, SplashMessageSetting SplashMessageSetting,
        GameplaySetting GameGameplaySetting);
}
