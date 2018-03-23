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

class Pin(port: String, pin: Int) {
    var state: Boolean = false
    val port: String = port
    val pin: Int = pin
    val dev = device_get_binding(port)

    init {
        gpio_pin_configure(this.dev, this.pin, GPIO_DIR_OUT)
        gpio_pin_write(this.dev, this.pin, 0)
        this.state = false
    }

    fun on() {
        gpio_pin_write(this.dev, this.pin, 1)
        this.state = true
    }

    fun off() {
        gpio_pin_write(this.dev, this.pin, 0)
        this.state = false
    }
}

fun main(args: Array<String>) {
    val led = Pin(LED0_GPIO_PORT, LED0_GPIO_PIN)

    while (true) {
        led.on()
        k_sleep(100);
        led.off()
        k_sleep(100);
    }
}
