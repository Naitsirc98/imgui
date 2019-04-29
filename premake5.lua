project "ImGui"
    kind "StaticLib"
    language "C++"

    targetdir("bin/" .. output_dir .. "%{prj.name}")
    objdir("bin-inter/" .. output_dir .. "%{prj.name}")

    includedirs 
    {
        "imgui"
    }

    files
    {
        "imgui/imconfig.h",
        "imgui/imgui.h",
        "imgui/imgui.cpp",
        "imgui/imgui_draw.cpp",
        "imgui/imgui_internal.h",
        "imgui/imgui_widgets.cpp",
        "imgui/imstb_rectpack.h",
        "imgui/imstb_textedit.h",
        "imgui/imstb_truetype.h",
        "imgui/imgui_demo.cpp"
    }

    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"
        
    filter 
    {
        "system:windows",
        "configurations:Release" 
    }
    buildoptions "/MT"