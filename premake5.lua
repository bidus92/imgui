project "Dear_ImGui"
    kind "StaticLib"
    language "C++"
    staticruntime "On"
	
	
    targetdir("bin/" .. outputdir .. "/%{prj.name}")
    objdir("bin-int/" .. outputdir .. "/%{prj.name}")


    files
    {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_tables.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp"
    }


    filter "configurations:Debug"
        systemversion "latest"
        buildoptions "/MTd"
		defines "_DEBUG"
		symbols "On"

	filter "configurations:Release"
	    systemversion "latest"
		buildoptions "/MT"
        defines "NDEBUG"
		optimize "On"

    filter "configurations:Dist"
	    systemversion "latest"
		buildoptions "/MT"
        defines "NDEBUG"
		optimize "On"