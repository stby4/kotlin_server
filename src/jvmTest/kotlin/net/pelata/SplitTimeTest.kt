package net.pelata

import kotlin.test.*
import net.pelata.features.pace.entity.SplitTime

class SplitTimeTest {

    @Test
    fun test30Secs() {
        val s = SplitTime(0.5)
        assertEquals(0, s.minutes)
        assertEquals(30, s.seconds)
    }

    @Test
    fun test60Secs() {
        val s = SplitTime(1.0)
        assertEquals(1, s.minutes)
        assertEquals(0, s.seconds)
    }

    @Test
    fun test75Secs() {
        val s = SplitTime(1.25)
        assertEquals(1, s.minutes)
        assertEquals(15, s.seconds)
    }
}
