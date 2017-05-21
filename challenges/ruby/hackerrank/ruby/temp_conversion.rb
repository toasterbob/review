def convert_temp(temp, input_scale: "celsius", output_scale: "celsius")

    if input_scale == "celsius"
        temp = temp * 9/5.0 + 32.0 if output_scale == "fahrenheit"
        temp = temp + 273.15 if output_scale == "kelvin"
    elsif input_scale == "kelvin"
        temp = temp * 9/5.0 - 459.67 if output_scale == "fahrenheit"
        temp = temp - 273.15 if output_scale == "celsius"
    elsif input_scale == "fahrenheit"
        temp = (temp - 32) * 5/9.0 if output_scale == "celsius"
        temp = (temp + 459.67) * 5/9.0 if output_scale == "kelvin"
    end

    temp
end
