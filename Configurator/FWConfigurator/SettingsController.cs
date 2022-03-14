using FWConfigurator.Models;

namespace FWConfigurator
{
    public class SettingsController
    {
        private string ConfigFilePath { get; }

        public SettingsController(string configFilePath)
        {
            ConfigFilePath = configFilePath;
        }

        public void SaveSettings(SettingsFile settings)
        {
            string output = $"// AUTOMATICKY VYGENEROVANE\n" +
                            $"bg_version = \"13. 3. 2022\";\n" +
                            $"bg_showWelcomeMessage = {settings.WelcomeMessageSetting.ShowWelcomeMessage};\n" +
                            $"bg_welcomeMessage = \"{settings.WelcomeMessageSetting.WelcomeMessage}\";\n" +
                            $"bg_showSplashMessage = {settings.SplashMessageSetting.ShowSplashMessage};\n" +
                            $"bg_splashMessage1 = \"{settings.SplashMessageSetting.SplashMessage1}\";\n" +
                            $"bg_splashMessage2 = \"{settings.SplashMessageSetting.SplashMessage2}\";\n" +
                            $"bg_splashMessage3 = \"{settings.SplashMessageSetting.SplashMessage3}\";\n" +
                            $"bg_respawnCount = {settings.GameGameplaySetting.RespawnCount};\n" +
                            $"bg_maxView = {settings.GameGameplaySetting.MaxView};\n" +
                            $"bg_forceGrass = {settings.GameGameplaySetting.ForceGrass};\n" +
                            $"bg_civilianWhenUnconscious = {settings.GameGameplaySetting.CivilianWhenUnconscious};\n";

            File.WriteAllText(ConfigFilePath, output);
        }
    }
}
