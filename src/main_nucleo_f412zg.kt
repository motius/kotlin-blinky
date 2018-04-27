/*
 * Copyright 2010-2018 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import platform.zephyr.nucleo_f412zg.*
import kotlinx.cinterop.*

fun Boolean.toInt() = if (this) 1 else 0

class Pin(port: String, pin: Int, dir: Int) {
    private val port: String = port
    private val pin: Int = pin
    private val dir: Int = dir
    private val dev = device_get_binding(port)

    init {
        gpio_pin_configure(this.dev, this.pin, this.dir)
    }

    fun write(value: Int) {
        gpio_pin_write(this.dev, this.pin, value)
    }

    fun high() {
        gpio_pin_write(this.dev, this.pin, 1)
    }

    fun low() {
        gpio_pin_write(this.dev, this.pin, 0)
    }

    fun read(): Int {
        var value: Int = 0
        gpio_pin_read(this.dev, this.pin, cValuesOf(value))
        return value
    }
}

fun main(args: Array<String>) {
    val led = Pin(LED0_GPIO_PORT, LED0_GPIO_PIN, GPIO_DIR_OUT)
    val sw = Pin(USER_PB_GPIO_PORT, USER_PB_GPIO_PIN, GPIO_DIR_IN)

    while (true) {
        led.write(1)
        k_sleep(1000)
        led.write(0)
        k_sleep(1000)
        printk("Hello World! %s\n", CONFIG_ARCH);
    }
}
