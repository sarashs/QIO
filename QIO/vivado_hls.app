<project xmlns="com.autoesl.autopilot.project" name="QIO" top="QIO_accel">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../OIO_accel_tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="QIO/QIO.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="QIO/QIO_accel.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="QIO/lfsr.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="inactive"/>
        <solution name="solution2" status="active"/>
    </solutions>
</project>

