   M S B A M L   `   `   `  ����H  DwpfIndividual, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:wpfIndividualwpfIndividual  5   	       wpfIndividual.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:wpfIndividual     5   	     � WindowStartupLocation$  CenterScreen=�5       � Title$ 
MainWindow��5   	   $	��530��6   $	��900��6)    � DataContext 5	          wpfIndividual.MainWindowVM  5
   
   .��5      �  � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $
��2.0* �6   .+�5   
   ��  �� CornerRadius$ 	10 0 0 10��6   ��5      �� 5       �� 
StartPoint$	 0,0&�6&    �� EndPoint$	 1,1&�67   .��5      �  � Color$ #3AA9AD��6#    � Offset$ 0Q�63   � 5      $ #3AADA1��6#   $ 1Q�63   5      ._�5      �  5      �� 5      $
��299* �6'   �� 5      $	��61* �6'   .+�5!      �� $��2��6   .+�5"      � 	 � Points	 �    -1��� ;X�����#4EB1B66:   � 5#      '	 �    �� �� ���� ��
�����#4EB1B66?   A� 5$      $��250 450 0 0q�6   $��40��63   $��40��6>   ���#4EB1B66J   5%      �� 5'      
 �� Orientation$
 Vertical=�5(      $��20,20,20,20q�6-   $��2��6B   .+�5)      �� $��Add Student��6      
mainbutten#��[  6Z   $��30,50,30,50q�6~   ���	#FF080EF4��63   �� *AddStudentCommand+6�   �� 5*      $��Delete Student��6   #��[  67   $��30,50,30,50q�6}   ���	#FF080EF4��6[   �� *DeleteCommand+6�   �� 5+      $��Edit Student��6   #��[  65    J� RenderTransformOrigin$ 0.525,0.639&�6�   $��30,50,30,50q�6�   ���	#FF080EF4��6Y   �� *" ExecuteEditStudentCommandCommand+6�   5.      50      51      �� 53   
   $��1��6   $ 	0 10 10 0��6!   $ 0.508,0.493&�6:   ��54      �� 55       �� ImageSource$ /Model/Images/11back.jpg��6    �� Opacity$
 0.35Q�6D   ._�58      �� $	��440��6   $	��Top=�6'   $
 Vertical=�6?   .+�59      �� $��	40,0,0,10q�6   $��Center=�61   $	��555��6N   
������ $
 
Horizontal=�6t   .+�5;      �� $��	FirstName��6    ���	#FF041D95  ListView#��[ 6I   $��90��6k   �� 5<      $��LastName��6    ���	#FF041D95#��[ 6I   $	��120��6k   �� 5=      $��DateOfBirth��6    ���	#FF041D95#��[ 6K   $
��Wrap=�6m   $��90��6�   �� 5>      $	��Age��6    ���	#FF041D95#��[ 6D   $��45��6f   �� 5?      $	��GPA��6    ���	#FF041D95#��[ 6C   5A      �� 5C      -   5         ��Name$ Listview��5C      $��0,1,0,0q�6.   $��Center=�6?   
������ $	��450��6u   ��6�   �� *Users+ �� UpdateSourceTrigger$ PropertyChanged=� �� SelectedItem 5D      �� *SelectedUser+$ PropertyChanged=���5E      �� 5F      .R�5G      �� 
������ 
���   �$��1q�6R    �� Padding$	 0.1q�5H   !   $ 7��6/   $	��590��6@   $��35��6L   ._�5I   "   �� $	��600��6-   
������ $
 
Horizontal=�6S   .+�5K   &   �� $��30��6,   $��30��67   $��1q�6C   ��6N   �� *Image+�� 5L   &   #��[ 6L   $��90��6n   ��60   �� *	FirstName+6n   �� 5M   &   #��[ 6K   $	��120��6m   ��60   �� *
LastName+6m   �� 5N   &   #��[ 6r   $��95��6�   ��60   �� *DateOfBirth+$ PropertyChanged=�6�   �� 5O   &   #��[ 6j   $��50��6�   ��60   �� *Age+$ PropertyChanged=�6�   �� 5P   &   #��[ 6j   $��50��6�   ��60   �� *GPA+$ PropertyChanged=�6�   5R   #   5T      5U      5X      5Y      5[      5\      5]      