.class synthetic Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$1;
.super Ljava/lang/Object;
.source "VideoCaptureDeviceInfoAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$huawei$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 584
    invoke-static {}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->values()[Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$1;->$SwitchMap$com$huawei$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType:[I

    :try_start_0
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$1;->$SwitchMap$com$huawei$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType:[I

    sget-object v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->GalaxyS:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v1}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$1;->$SwitchMap$com$huawei$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType:[I

    sget-object v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->HTCEvo:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v1}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
