using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using wpfIndividual.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media.Imaging;


namespace wpfIndividual
{
    public partial class MainWindowVM : ObservableObject
    {
        [ObservableProperty]
        public ObservableCollection<User> users;
        [ObservableProperty]
        public User selectedUser = null;



        public void CloseMainWindow()
        {
            Application.Current.MainWindow.Close();
        }




        [RelayCommand]
        public void message()
        {

            MessageBox.Show($"{selectedUser.FirstName} GPA value must be between 0 and 4.", "Error");
        }

        [RelayCommand]
        public void AddStudent()
        {
            var vm = new AddStudentVM();
            vm.title = "ADD USER";
            AddStudentWindow window = new AddStudentWindow(vm);
            window.ShowDialog();

            if (vm.Student.FirstName != null)
            {
                users.Add(vm.Student);
            }
        }

        [RelayCommand]
        public void Delete()
        {
            if (selectedUser != null)
            {
                string name = selectedUser.FirstName;
                users.Remove(selectedUser);
                MessageBox.Show($"{name} is Deleted successfuly.", "DELETED \a ");

            }
            else
            {
                MessageBox.Show("Plese Select Student before Delete.", "Error");


            }
        }
        [RelayCommand]
        public void ExecuteEditStudentCommand()
        {
            if (selectedUser != null)
            {
                var vm = new AddStudentVM(selectedUser);
                vm.title = "EDIT USER";
                var window = new AddStudentWindow(vm);

                window.ShowDialog();


                int index = users.IndexOf(selectedUser);
                users.RemoveAt(index);
                users.Insert(index, vm.Student);



            }
            else
            {
                MessageBox.Show("Please Select the student", "Warning!");
            }
        }

        public MainWindowVM()
        {
            users = new ObservableCollection<User>();
            BitmapImage image1 = new BitmapImage(new Uri("/Model/Images/6.png", UriKind.Relative));
            users.Add(new User(24, "Imasha", "Senevirathna", "14/12/1999", image1));
            BitmapImage image2 = new BitmapImage(new Uri("/Model/Images/4.png", UriKind.Relative));
            users.Add(new User(23, "Idusha", "Udari", "03/09/2000", image2));
            BitmapImage image3 = new BitmapImage(new Uri("/Model/Images/7.png", UriKind.Relative));
            users.Add(new User(20, "Minoshi", "Shashikala", "21/01/2003", image3));
            BitmapImage image4 = new BitmapImage(new Uri("/Model/Images/9.png", UriKind.Relative));
            users.Add(new User(25, "Udeshi", "Hewawitharana", "16/04/1998", image4));

        }
    }
}
