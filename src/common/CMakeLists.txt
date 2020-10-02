set( HEADERS
    IBufferStream.h
    ICriticalSection.h
    IDataStream.h
    IDebugLog.h
    IDirectoryIterator.h
    IErrors.h
    IEvent.h
    IFileStream.h
    IInterlockedLong.h
    IMutex.h
    IPrefix.h
    ISegmentStream.h
    ISingleton.h
    ITimer.h
    ITypes.h
)

set( SOURCES
    IBufferStream.cpp
    IDataStream.cpp
    IDebugLog.cpp
    IDirectoryIterator.cpp
    IErrors.cpp
    IEvent.cpp
    IFileStream.cpp
    IInterlockedLong.cpp
    IMutex.cpp
    IPrefix.cpp
    ISegmentStream.cpp
    ISingleton.cpp
    ITimer.cpp
    ITypes.cpp
)

add_library(common OBJECT ${HEADERS} ${SOURCES})

install( FILES ${HEADERS} DESTINATION "${F4SE_INSTALL_DIR}/dev/include/common" )
