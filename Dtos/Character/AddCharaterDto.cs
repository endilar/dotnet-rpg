using dotnet_rpg.Models;

namespace dotnet_rpg.Dtos.Character
{
    public class AddCharaterDto
    {
        public string Name {get; set; } = "Jmeluk";

        public int Hitpoints {get;set;} = 100;

        public int Strength {get ; set;} = 10;

        public int Defense {get; set;} = 10;

        public int Inteligence {get ; set;} = 10;

        public RpgClass Class { get ; set ;} = RpgClass.Knight;

    }
}