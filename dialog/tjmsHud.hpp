#define ST_RIGHT 0x01

class tjmsStatusbar {
	idd = -1;
	onLoad = "uiNamespace setVariable ['tjmsStatusbar', _this select 0]";
	onUnload = "uiNamespace setVariable ['tjmsStatusbar', objNull]";
	onDestroy = "uiNamespace setVariable ['tjmsStatusbar', objNull]";
	duration = 10e10;
	class controls {
		class Statusbar {
			idc = 1000;
			font = "EtelkaNarrowMediumPro";
			size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			type = 13;
			style = 1;
			shadow = 1;
			text = "";
			x = safezoneX + safezoneW - 10.00;
			y = safezoneY + safezoneH - 0.10;
			w = 10;
			h = 0.3;
			class Attributes {
				align = "right";
				color = "#FFFFFF";
			};
		};
	};
};

class tjmsIntroText_1 {
	idd = -1;
	onLoad = "uiNamespace setVariable ['tjmsIntroText_1', _this select 0]";
	onUnload = "uiNamespace setVariable ['tjmsIntroText_1', objNull]";
	onDestroy = "uiNamespace setVariable ['tjmsIntroText_1', objNull]";
	duration = 10e10;
	class controls {
		class IntroText1 {
			idc = 1001;
			font = "EtelkaNarrowMediumPro";
			size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			type = 13;
			style = 1;
			shadow = 1;
			text = "";
			fadein = 2;
			fadeout = 2;
			x = safezoneX + 0.03 * safezoneW * 3 / 4;
			y = safezoneY + 0.03 * safezoneH;
			w = 2;
			h = 1;
			class Attributes {
				align = "left";
				color = "#FFFFFF";
			};
		};
	};
};

class tjmsIntroText_2 {
	idd = -1;
	onLoad = "uiNamespace setVariable ['tjmsIntroText_2', _this select 0]";
	onUnload = "uiNamespace setVariable ['tjmsIntroText_2', objNull]";
	onDestroy = "uiNamespace setVariable ['tjmsIntroText_2', objNull]";
	duration = 10e10;
	class controls {
		class IntroText2 {
			idc = 1002;
			font = "EtelkaNarrowMediumPro";
			size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			type = 13;
			style = 1;
			shadow = 1;
			text = "";
			fadein = 2;
			fadeout = 2;
			x = safezoneX + 0.03 * safezoneW * 3 / 4;
			y = safezoneY + 0.03 * safezoneH;
			w = 2;
			h = 1;
			class Attributes {
				align = "left";
				color = "#FFFFFF";
			};
		};
	};
};

class tjmsIntroText_3 {
	idd = -1;
	onLoad = "uiNamespace setVariable ['tjmsIntroText_3', _this select 0]";
	onUnload = "uiNamespace setVariable ['tjmsIntroText_3', objNull]";
	onDestroy = "uiNamespace setVariable ['tjmsIntroText_3', objNull]";
	duration = 10e10;
	class controls {
		class IntroText3 {
			idc = 1003;
			font = "EtelkaNarrowMediumPro";
			size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			type = 13;
			style = 1;
			shadow = 1;
			text = "";
			fadein = 2;
			fadeout = 2;
			x = safezoneX + safezoneW - 2.04;
			y = safezoneY + 0.03 * safezoneH;
			w = 2;
			h = 1;
			class Attributes {
				align = "right";
				color = "#FFFFFF";
			};
		};
	};
};

class tjmsIntroText_4 {
	idd = -1;
	onLoad = "uiNamespace setVariable ['tjmsIntroText_4', _this select 0]";
	onUnload = "uiNamespace setVariable ['tjmsIntroText_4', objNull]";
	onDestroy = "uiNamespace setVariable ['tjmsIntroText_4', objNull]";
	duration = 10e10;
	class controls {
		class IntroText4 {
			idc = 1004;
			font = "EtelkaNarrowMediumPro";
			size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			type = 13;
			style = 1;
			shadow = 1;
			text = "";
			fadein = 2;
			fadeout = 2;
			x = safezoneX + 0.03 * safezoneW * 3 / 4;
			y = safezoneY + 0.03 * safezoneH;
			w = 2;
			h = 1;
			class Attributes {
				align = "left";
				color = "#FFFFFF";
			};
		};
	};
};

class tjmsIntroText_5 {
	idd = -1;
	onLoad = "uiNamespace setVariable ['tjmsIntroText_5', _this select 0]";
	onUnload = "uiNamespace setVariable ['tjmsIntroText_5', objNull]";
	onDestroy = "uiNamespace setVariable ['tjmsIntroText_5', objNull]";
	duration = 10e10;
	class controls {
		class IntroText5 {
			idc = 1005;
			font = "EtelkaNarrowMediumPro";
			size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			type = 13;
			style = 1;
			shadow = 1;
			text = "";
			fadein = 2;
			fadeout = 2;
			x = safezoneX + safezoneW - 2.04;
			y = safezoneY + safezoneH - 0.3;
			w = 2;
			h = 1;
			class Attributes {
				align = "right";
				color = "#FFFFFF";
			};
		};
	};
};