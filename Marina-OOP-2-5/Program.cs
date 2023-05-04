using System;
using System.Net;
using System.Text.RegularExpressions;

namespace Marina_OOP_2_5
{
    // 277ecd0b607dc515ad159d40f83f18ce
    internal class Program
    {
        static void Main(string[] args) 
        {
            // Запрос к API погодного сервиса
            string apiKey = "277ecd0b607dc515ad159d40f83f18ce"; // API-ключ
            string city = "Bryansk";
            string url = $"https://openweathermap.org/city/571476%20&appid=277ecd0b607dc515ad159d40f83f18ce&units=metric";
            WebClient client = new WebClient();
            string response = client.DownloadString(url);

            Regex regexCurrent = new Regex("\"temp\":(\\d+\\.?\\d*)");
            Regex regexNight = new Regex("\"temp_min\":(\\d+\\.?\\d*),.*\"temp_max\":(\\d+\\.?\\d*)");
            Regex regexMorning = new Regex("\"temp\":(\\d+\\.?\\d*),.*\"temp_min\":(\\d+\\.?\\d*),");
            Regex regexDay = new Regex("\"temp\":(\\d+\\.?\\d*),.*\"temp_min\":(\\d+\\.?\\d*),.*\"temp_max\":(\\d+\\.?\\d*),");
            Regex regexEvening = new Regex("\"temp\":(\\d+\\.?\\d*),.*\"temp_min\":(\\d+\\.?\\d*),.*\"temp_max\":(\\d+\\.?\\d*),.*\"feels_like\":(\\d+\\.?\\d*)");

            string current = regexCurrent.Match(response).Groups[1].Value;
            string nightMin = regexNight.Match(response).Groups[1].Value;
            string nightMax = (regexNight.Match(response).Groups[2].Value);
            string morning = (regexMorning.Match(response).Groups[1].Value);
            string dayMin = (regexDay.Match(response).Groups[2].Value);
            string dayMax = (regexDay.Match(response).Groups[3].Value);
            string evening = (regexEvening.Match(response).Groups[4].Value);

            Console.WriteLine($"Текущая температура в Брянске: {current}°C");
            Console.WriteLine($"Температура в ночное время: от {nightMin}°C до {nightMax}°C");
            Console.WriteLine($"Температура утром: {morning}°C");
            Console.WriteLine($"Температура днем: от {dayMin}°C до {dayMax}°C");
            Console.WriteLine($"Температура вечером: ощущается как {evening}°C");
        }
    }
}