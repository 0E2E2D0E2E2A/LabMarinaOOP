   M S B A M L   `   `   `  ����I  EMarina-OOP-2-1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Marina_OOP_2_1Marina_OOP_2_1  5   	       Marina_OOP_2_1.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:Marina_OOP_2_1     5   	     � Title$  
MainWindow��5   	   $	��536��6   $	��844��6)   .��5	      � $��0,0,4,-6q�6    J� RenderTransformOrigin$ 0.5,0.5&�6   z�5
   
   V� 5      .~�5      �� �� 5      �� 5       �� Angle$ 0Q�6"   T� 5      5      .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dataGridMain��5         AutoGenerateColumns$ False��6)   $��
0,0,267,10q�6E   $	��NaN��6t   $	��NaN��6�   $ 0.5,0.5&�6�   z�5      V� 5      .~�5      �� �� 5      �� 5      $ 0Q�6&   T� 5      5         Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Название��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 120 67      MinWidth$	 100Q�6C   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6R   �� *
nameSkaner+  5      $	 DPI��6%   $	 120 62   $	 100Q�6>   	 6M   �� *	skanerDPI+  5      $ Тип��6%   $	 120 62   $	 100Q�6>   	 6M   �� *
typeSkaner+  5      $ Цвет��6%   $	 120 63   $	 100Q�6?   	 6N   �� *colorSkaner+5!      �� 5#   
   -   5        
 ��Name$
 textBox_Name��5#      $��
607,41,0,0q�6(    �� TextWrapping$
 Wrap=�6<   $	��Top=�6P   $��39��6h   $ 0.5,0.5&�6t   $��Times New Roman)�6�   $��30(�6�   $
��Left=�6�   $	��220��6�   .��6�   z�5$      V� 5%      .~�5&      �� �� 5'      �� 5(      $ 0Q�6&   T� 5)      5*      .��5+   '   5,      �� 5-   
   -   5        $
 textBox_DPI��5-      $��607,116,0,0q�6'   $
 Wrap=�6<   $	��Top=�6P   $��39��6h   $��Times New Roman)�6t   $��30(�6�   $
��Left=�6�   $	��220��6�   $ 0.5,0.5&�6�   .��6�   z�5.      V� 5/      .~�50      �� �� 51      �� 52      $ 0Q�6&   T� 53      54      .��55   '   56      �� 57   
   -   5        $
 textBox_Type��57      $
��Left=�6(   $��607,195,0,0q�6C   $
 Wrap=�6X   $	��Top=�6l   $	��220��6�   $��39��6�   $��30(�6�   $��Times New Roman)�6�   $ 0.5,0.5&�6�   .��6�   z�58      V� 59      .~�5:      �� �� 5;      �� 5<      $ 0Q�6&   T� 5=      5>      .��5?   '   5@      �� 5A   
   $��Название��6   $��
0,14,122,0q�6#   $	��Top=�67   $��Times New Roman)�6O   $��18(�6l   $��27��6z   $��Right=�6�   $��95��6�   $ 0.5,0.5&�6�   z�5B      V� 5C      .~�5D      �� �� 5E      �� 5F      $ 0Q�6&   T� 5G      5H      5J      �� 5K   
   -   5        $
 textBox_Color��5K      $
��Left=�6)   $��607,277,0,0q�6D   $
 Wrap=�6Y   $	��Top=�6m   $	��220��6�   $��39��6�   $��30(�6�   $��Times New Roman)�6�   $ 0.5,0.5&�6�   .��6�   z�5L      V� 5M      .~�5N      �� �� 5O      �� 5P      $ 0Q�6&   T� 5Q      5R      .��5S   '   5T      �� 5U   
   $��кол-во DPI��6   $��
0,89,122,0q�6%   $	��Top=�69   $��Times New Roman)�6Q   $��18(�6n   $��27��6|   $��Right=�6�   $��95��6�   $ 0.5,0.5&�6�   z�5V      V� 5W      .~�5X      �� �� 5Y      �� 5Z      $ 0Q�6&   T� 5[      5\      5^      �� 5_   
   $��Цвет��6   $��0,250,122,0q�6   $��Times New Roman)�64   $��18(�6Q   $��Right=�6_   $��95��6{   $��27��6�   $	��Top=�6�   $ 0.5,0.5&�6�   z�5`      V� 5a      .~�5b      �� �� 5c      �� 5d      $ 0Q�6&   T� 5e      5f      5h      �� 5i   
   -   5         ��Name$ add_btn_Click_1��5i      $��Добавить��6*   $
��Left=�6=   $	��Top=�6X   $��60��6�   $	��220��6�   
��� � �$��605,339,0,0q�6�   $ 0.5,0.5&�6�   z�5j      V� 5k      .~�5l      �� �� 5m      �� 5n      $ 0Q�6&   T� 5o      5p      5r      �� 5s   
   -   5        $ delete_btn_Click_1��5s      $��Удалить��6-   $
��Left=�6?   $	��Top=�6Z   $��60��6r   $	��222��6~   
���  ��$��605,423,0,0q�6�   $ 0.5,0.5&�6�   z�5t      V� 5u      .~�5v      �� �� 5w      �� 5x      $ 0Q�6&   T� 5y      5z      5|      �� 5}   
   $��Тип сканера��6   $��0,162,121,0q�6&   $��Times New Roman)�6;   $��18(�6X   $��28��6f   $	��Top=�6r   $��Right=�6�   $��96��6�   $ 0.5,0.5&�6�   z�5~      V� 5      .~�5�      �� �� 5�      �� 5�      $ 0Q�6&   T� 5�      5�      5�      5�      5�      