/****************************************************************************
** Meta object code from reading C++ file 'GUIBackend.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.10.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../GUIBackend/GUIBackend.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'GUIBackend.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.10.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_GUIBackend_t {
    QByteArrayData data[22];
    char stringdata0[352];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_GUIBackend_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_GUIBackend_t qt_meta_stringdata_GUIBackend = {
    {
QT_MOC_LITERAL(0, 0, 10), // "GUIBackend"
QT_MOC_LITERAL(1, 11, 20), // "MaxTrackCountChanged"
QT_MOC_LITERAL(2, 32, 0), // ""
QT_MOC_LITERAL(3, 33, 3), // "val"
QT_MOC_LITERAL(4, 37, 24), // "CurruntTrackCountChanged"
QT_MOC_LITERAL(5, 62, 20), // "MaxTrainCountChanged"
QT_MOC_LITERAL(6, 83, 24), // "CurruntTrainCountChanged"
QT_MOC_LITERAL(7, 108, 18), // "StationListChanged"
QT_MOC_LITERAL(8, 127, 4), // "list"
QT_MOC_LITERAL(9, 132, 31), // "ListAdjecencyforLocationChanged"
QT_MOC_LITERAL(10, 164, 16), // "RouteListChanged"
QT_MOC_LITERAL(11, 181, 16), // "TrainListChanged"
QT_MOC_LITERAL(12, 198, 19), // "LocationListChanged"
QT_MOC_LITERAL(13, 218, 13), // "maxTrackCount"
QT_MOC_LITERAL(14, 232, 17), // "curruntTrackCount"
QT_MOC_LITERAL(15, 250, 13), // "maxTrainCount"
QT_MOC_LITERAL(16, 264, 17), // "curruntTrainCount"
QT_MOC_LITERAL(17, 282, 11), // "stationList"
QT_MOC_LITERAL(18, 294, 9), // "routeList"
QT_MOC_LITERAL(19, 304, 9), // "trainList"
QT_MOC_LITERAL(20, 314, 12), // "locationList"
QT_MOC_LITERAL(21, 327, 24) // "listAdjecencyforLocation"

    },
    "GUIBackend\0MaxTrackCountChanged\0\0val\0"
    "CurruntTrackCountChanged\0MaxTrainCountChanged\0"
    "CurruntTrainCountChanged\0StationListChanged\0"
    "list\0ListAdjecencyforLocationChanged\0"
    "RouteListChanged\0TrainListChanged\0"
    "LocationListChanged\0maxTrackCount\0"
    "curruntTrackCount\0maxTrainCount\0"
    "curruntTrainCount\0stationList\0routeList\0"
    "trainList\0locationList\0listAdjecencyforLocation"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_GUIBackend[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       9,   86, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       9,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   59,    2, 0x06 /* Public */,
       4,    1,   62,    2, 0x06 /* Public */,
       5,    1,   65,    2, 0x06 /* Public */,
       6,    1,   68,    2, 0x06 /* Public */,
       7,    1,   71,    2, 0x06 /* Public */,
       9,    1,   74,    2, 0x06 /* Public */,
      10,    1,   77,    2, 0x06 /* Public */,
      11,    1,   80,    2, 0x06 /* Public */,
      12,    1,   83,    2, 0x06 /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void, QMetaType::QVariantList,    8,
    QMetaType::Void, QMetaType::QVariantMap,    8,
    QMetaType::Void, QMetaType::QVariantList,    8,
    QMetaType::Void, QMetaType::QVariantList,    8,
    QMetaType::Void, QMetaType::QVariantList,    8,

 // properties: name, type, flags
      13, QMetaType::Int, 0x00495003,
      14, QMetaType::Int, 0x00495003,
      15, QMetaType::Int, 0x00495003,
      16, QMetaType::Int, 0x00495003,
      17, QMetaType::QVariantList, 0x00495003,
      18, QMetaType::QVariantList, 0x00495003,
      19, QMetaType::QVariantList, 0x00495003,
      20, QMetaType::QVariantList, 0x00495003,
      21, QMetaType::QVariantMap, 0x00495003,

 // properties: notify_signal_id
       0,
       1,
       2,
       3,
       4,
       6,
       7,
       8,
       5,

       0        // eod
};

void GUIBackend::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        GUIBackend *_t = static_cast<GUIBackend *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->MaxTrackCountChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->CurruntTrackCountChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->MaxTrainCountChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->CurruntTrainCountChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 4: _t->StationListChanged((*reinterpret_cast< QVariantList(*)>(_a[1]))); break;
        case 5: _t->ListAdjecencyforLocationChanged((*reinterpret_cast< QVariantMap(*)>(_a[1]))); break;
        case 6: _t->RouteListChanged((*reinterpret_cast< QVariantList(*)>(_a[1]))); break;
        case 7: _t->TrainListChanged((*reinterpret_cast< QVariantList(*)>(_a[1]))); break;
        case 8: _t->LocationListChanged((*reinterpret_cast< QVariantList(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            typedef void (GUIBackend::*_t)(int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GUIBackend::MaxTrackCountChanged)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (GUIBackend::*_t)(int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GUIBackend::CurruntTrackCountChanged)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (GUIBackend::*_t)(int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GUIBackend::MaxTrainCountChanged)) {
                *result = 2;
                return;
            }
        }
        {
            typedef void (GUIBackend::*_t)(int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GUIBackend::CurruntTrainCountChanged)) {
                *result = 3;
                return;
            }
        }
        {
            typedef void (GUIBackend::*_t)(QVariantList );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GUIBackend::StationListChanged)) {
                *result = 4;
                return;
            }
        }
        {
            typedef void (GUIBackend::*_t)(QVariantMap );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GUIBackend::ListAdjecencyforLocationChanged)) {
                *result = 5;
                return;
            }
        }
        {
            typedef void (GUIBackend::*_t)(QVariantList );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GUIBackend::RouteListChanged)) {
                *result = 6;
                return;
            }
        }
        {
            typedef void (GUIBackend::*_t)(QVariantList );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GUIBackend::TrainListChanged)) {
                *result = 7;
                return;
            }
        }
        {
            typedef void (GUIBackend::*_t)(QVariantList );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GUIBackend::LocationListChanged)) {
                *result = 8;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        GUIBackend *_t = static_cast<GUIBackend *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< int*>(_v) = _t->GetMaxTrackCount(); break;
        case 1: *reinterpret_cast< int*>(_v) = _t->GetCurruntTrackCount(); break;
        case 2: *reinterpret_cast< int*>(_v) = _t->GetMaxTrainCount(); break;
        case 3: *reinterpret_cast< int*>(_v) = _t->GetCurruntTrainCount(); break;
        case 4: *reinterpret_cast< QVariantList*>(_v) = _t->GetStationList(); break;
        case 5: *reinterpret_cast< QVariantList*>(_v) = _t->GetRouteList(); break;
        case 6: *reinterpret_cast< QVariantList*>(_v) = _t->GetTrainList(); break;
        case 7: *reinterpret_cast< QVariantList*>(_v) = _t->GetLocationList(); break;
        case 8: *reinterpret_cast< QVariantMap*>(_v) = _t->GetListAdjecencyforLocation(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        GUIBackend *_t = static_cast<GUIBackend *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->SetMaxTrackCount(*reinterpret_cast< int*>(_v)); break;
        case 1: _t->SetCurruntTrackCount(*reinterpret_cast< int*>(_v)); break;
        case 2: _t->SetMaxTrainCount(*reinterpret_cast< int*>(_v)); break;
        case 3: _t->SetCurruntTrainCount(*reinterpret_cast< int*>(_v)); break;
        case 4: _t->SetStationList(*reinterpret_cast< QVariantList*>(_v)); break;
        case 5: _t->SetRouteList(*reinterpret_cast< QVariantList*>(_v)); break;
        case 6: _t->SetTrainList(*reinterpret_cast< QVariantList*>(_v)); break;
        case 7: _t->SetLocationList(*reinterpret_cast< QVariantList*>(_v)); break;
        case 8: _t->SetListAdjecencyforLocation(*reinterpret_cast< QVariantMap*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

const QMetaObject GUIBackend::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_GUIBackend.data,
      qt_meta_data_GUIBackend,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *GUIBackend::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *GUIBackend::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_GUIBackend.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int GUIBackend::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 9)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 9;
    }
#ifndef QT_NO_PROPERTIES
   else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 9;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 9;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 9;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 9;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 9;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void GUIBackend::MaxTrackCountChanged(int _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void GUIBackend::CurruntTrackCountChanged(int _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void GUIBackend::MaxTrainCountChanged(int _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void GUIBackend::CurruntTrainCountChanged(int _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void GUIBackend::StationListChanged(QVariantList _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void GUIBackend::ListAdjecencyforLocationChanged(QVariantMap _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}

// SIGNAL 6
void GUIBackend::RouteListChanged(QVariantList _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}

// SIGNAL 7
void GUIBackend::TrainListChanged(QVariantList _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 7, _a);
}

// SIGNAL 8
void GUIBackend::LocationListChanged(QVariantList _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 8, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
