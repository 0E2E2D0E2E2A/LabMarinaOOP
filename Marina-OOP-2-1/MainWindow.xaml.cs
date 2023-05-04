using System;
using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Input;

namespace Marina_OOP_2_1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    class SkanerClass
    {
        public string nameSkaner { get; set; }
        public string skanerDPI { get; set; }
        public string typeSkaner { get; set; }
        public string colorSkaner { get; set; }


        public SkanerClass(string nameSkaner, string skanerDPI, string typeSkaner, string colorSkaner)
        {
            this.nameSkaner = nameSkaner;
            this.skanerDPI = skanerDPI;
            this.typeSkaner = typeSkaner;
            this.colorSkaner = colorSkaner;
        }
    }

    public partial class MainWindow : Window
    {
        ObservableCollection<SkanerClass> elements;

        public MainWindow()
        {
            InitializeComponent();

            elements = new ObservableCollection<SkanerClass>();
            dataGridMain.ItemsSource = elements;
            elements.Add(new SkanerClass("TICODE", "8000", "ручной", "черный"));
        }

        private void Add_btn_Click_1_Click(object sender, RoutedEventArgs e)
        {
            string name = textBox_Name.Text;
            string power = textBox_DPI.Text;
            string volume = textBox_Type.Text;
            string color = textBox_Color.Text;

            elements.Add(new SkanerClass(name, power, volume, color));


            textBox_Name.Text = null;
            textBox_DPI.Text = null;
            textBox_Type.Text = null;
            textBox_Color.Text = null;
        }

        private void dataGrid_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Delete)
            {
                var index = dataGridMain.SelectedIndex;

                dataGridMain.Items.RemoveAt(index);
            }
        }

        private void delete_btn_Click_1_Click(object sender, RoutedEventArgs e)
        {
            var index = dataGridMain.SelectedIndex;

            try
            {
                elements.RemoveAt(index);
            }
            catch
            {
                MessageBox.Show("Ошибка! Вы не выбрали элемент, который нужно удалить");
            }
        }

        private void dataGrid_MouseUp(object sender, MouseButtonEventArgs e)
        {
            var elements = dataGridMain.SelectedItem as SkanerClass;

            try
            {
                textBox_Name.Text = elements.nameSkaner;
                textBox_DPI.Text = elements.skanerDPI;
                textBox_Type.Text = elements.typeSkaner;
                textBox_Color.Text = elements.colorSkaner;
            }
            catch (NullReferenceException)
            {
                MessageBox.Show("Куда жмёшь?! Тут же пусто, не видишь что ли?");
            }
        }
    }
}