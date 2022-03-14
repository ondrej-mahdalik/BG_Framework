using System;
using System.IO;
using System.Windows;
using FWConfigurator.Models;
using MaterialDesignThemes.Wpf;
using Microsoft.Win32;

namespace FWConfigurator.GUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            SetDefaultValues();
        }

        private void SetDefaultValues(object? sender = null, RoutedEventArgs? e = null)
        {
            checkBox_WelcomeMessage.IsChecked = true;
            txt_WelcomeMessage.Text = "Hráč %1 se připojil do hry!";

            checkBox_SplashMessage.IsChecked = true;
            txt_SplashMessage1.Text = "Vitej na misi od Broken Grenade";
            txt_SplashMessage2.Text = "Vyber si gear a čekej na brief.";
            txt_SplashMessage3.Text = "Neruš ostatní soundboardem nebo shit-talkem.";

            checkBox_LimitRespawn.IsChecked = true;
            slider_RespawnCount.Value = 3;

            slider_MaxView.Value = 12000;
            checkBox_forceGrass.IsChecked = true;

            checkBox_civilianWhenUnconscious.IsChecked = true;

            if(sender is not null)
                mainSnackbar.MessageQueue?.Enqueue("Nastavení bylo obnoveno na výchozí hodnoty.");
        }

        private void CheckBox_Checked(object sender, RoutedEventArgs e)
        {
            if (sender.Equals(checkBox_WelcomeMessage) && txt_WelcomeMessage is not null)
                txt_WelcomeMessage.IsEnabled = checkBox_WelcomeMessage.IsChecked ?? false;
            else if (sender.Equals(checkBox_SplashMessage) && txt_SplashMessage1 is not null &&
                     txt_SplashMessage2 is not null && txt_SplashMessage3 is not null)
                txt_SplashMessage1.IsEnabled = txt_SplashMessage2.IsEnabled =
                    txt_SplashMessage3.IsEnabled = checkBox_SplashMessage.IsChecked ?? false;
            else if (sender.Equals(checkBox_LimitRespawn) && slider_RespawnCount is not null)
                slider_RespawnCount.IsEnabled = checkBox_LimitRespawn.IsChecked ?? false;
        }

        private void BtnSaveChangesClick(object sender, RoutedEventArgs e)
        {
            // Get filepath
            SaveFileDialog dialog = new()
            {
                Title = "Výběr umístění vygenerovaného souboru",
                AddExtension = true,
                FileName = "nastaveni.sqf",
                Filter = "Konfigurace frameworku (*.sqf)|*.sqf",
                InitialDirectory = Directory.GetCurrentDirectory(),
                OverwritePrompt = true
            };

            Dispatcher.Invoke(delegate
            {
                var result = dialog.ShowDialog();
                if (result ?? false)
                    SaveChanges(dialog.FileName);
            });
        }

        private void SaveChanges(string path)
        {
            // Generate settings
            SettingsFile settings = new(
                new WelcomeMessageSetting(
                    checkBox_WelcomeMessage.IsChecked ?? false,
                    checkBox_WelcomeMessage.IsChecked ?? false ? txt_WelcomeMessage.Text : ""
                ),
                new SplashMessageSetting(
                    checkBox_SplashMessage.IsChecked ?? false,
                    checkBox_SplashMessage.IsChecked ?? false ? txt_SplashMessage1.Text : "",
                    checkBox_SplashMessage.IsChecked ?? false ? txt_SplashMessage2.Text : "",
                    checkBox_SplashMessage.IsChecked ?? false ? txt_SplashMessage3.Text : ""
                ),
                new GameplaySetting(
                    checkBox_LimitRespawn.IsChecked ?? false ? (int)slider_RespawnCount.Value : -1,
                    (int)slider_MaxView.Value, checkBox_forceGrass.IsChecked ?? false,
                    checkBox_civilianWhenUnconscious.IsChecked ?? false
                )
            );

            try
            {
                // Generate file
                SettingsController controller = new(path);
                controller.SaveSettings(settings);

                // Show message
                mainSnackbar.MessageQueue?.Enqueue("Soubor byl úspěšně vygenerován.");
            }
            catch (Exception ex)
            {
                txt_errorText.Text = ex.Message;
                btn_acknowledgeError.Content = "OK";
                btn_acknowledgeError.Tag = false;
                DialogHost.Show(dialogContent);
            }
        }

        private void AcknowledgeError(object sender, RoutedEventArgs e)
        {
            if((bool)btn_acknowledgeError.Tag)
                Application.Current.Shutdown(1);
        }
    }
}
