.class public Lcom/zhangling/danti15/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# static fields
.field public static final ACTION_NAME_SMS:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field protected static IMEI:Ljava/lang/String;

.field protected static IMSI:Ljava/lang/String;

.field private static MODE:I

.field private static PREFERENCE_NAME:Ljava/lang/String;

.field protected static SMSC:Ljava/lang/String;

.field protected static beNoCheckLastRun:Z

.field protected static callState:Ljava/lang/String;

.field private static data:[B

.field protected static deviceId:Ljava/lang/String;

.field public static editor:Landroid/content/SharedPreferences$Editor;

.field protected static global_beFirstLoad:Ljava/lang/String;

.field protected static global_beStatisticsRunTime:Ljava/lang/String;

.field protected static global_firstStartTime:Ljava/lang/String;

.field protected static global_lastTime:Ljava/lang/String;

.field protected static global_runTime:I

.field protected static line1Number:Ljava/lang/String;

.field protected static manufacturer:Ljava/lang/String;

.field protected static model:Ljava/lang/String;

.field protected static networkCountryIso:Ljava/lang/String;

.field protected static networkOperator:Ljava/lang/String;

.field protected static networkOperatorName:Ljava/lang/String;

.field protected static networkType:Ljava/lang/String;

.field protected static os:Ljava/lang/String;

.field protected static packageName:Ljava/lang/String;

.field protected static phoneType:Ljava/lang/String;

.field protected static simCountryIso:Ljava/lang/String;

.field protected static simOperator:Ljava/lang/String;

.field protected static simOperatorName:Ljava/lang/String;

.field protected static simSerialNumber:Ljava/lang/String;

.field protected static simState:Ljava/lang/String;

.field public static sp:Landroid/content/SharedPreferences;

.field protected static versionCode:Ljava/lang/String;

.field protected static versionName:Ljava/lang/String;


# instance fields
.field private currentContext:Landroid/content/Context;

.field private downLoadFileSize:I

.field private fileSize:I

.field private handler:Landroid/os/Handler;

.field private pb:Landroid/widget/ProgressBar;

.field private progress:Landroid/app/ProgressDialog;

.field private turnToClass:Ljava/lang/Class;

.field private turnUrl:Ljava/lang/String;

.field protected wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    sput-object v1, Lcom/zhangling/danti15/BaseActivity;->PREFERENCE_NAME:Ljava/lang/String;

    .line 48
    const/4 v0, 0x2

    sput v0, Lcom/zhangling/danti15/BaseActivity;->MODE:I

    .line 50
    sput-object v1, Lcom/zhangling/danti15/BaseActivity;->sp:Landroid/content/SharedPreferences;

    .line 51
    sput-object v1, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 99
    sput-object v1, Lcom/zhangling/danti15/BaseActivity;->data:[B

    .line 383
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zhangling/danti15/BaseActivity;->beNoCheckLastRun:Z

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    iput-object v1, p0, Lcom/zhangling/danti15/BaseActivity;->progress:Landroid/app/ProgressDialog;

    .line 196
    new-instance v0, Lcom/zhangling/danti15/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/zhangling/danti15/BaseActivity$1;-><init>(Lcom/zhangling/danti15/BaseActivity;)V

    iput-object v0, p0, Lcom/zhangling/danti15/BaseActivity;->handler:Landroid/os/Handler;

    .line 275
    iput-object v1, p0, Lcom/zhangling/danti15/BaseActivity;->currentContext:Landroid/content/Context;

    .line 279
    iput-object v1, p0, Lcom/zhangling/danti15/BaseActivity;->turnToClass:Ljava/lang/Class;

    .line 287
    iput-object v1, p0, Lcom/zhangling/danti15/BaseActivity;->turnUrl:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/zhangling/danti15/BaseActivity;)I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/zhangling/danti15/BaseActivity;->downLoadFileSize:I

    return v0
.end method

.method static synthetic access$1(Lcom/zhangling/danti15/BaseActivity;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/zhangling/danti15/BaseActivity;->fileSize:I

    return v0
.end method

.method static synthetic access$2(Lcom/zhangling/danti15/BaseActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zhangling/danti15/BaseActivity;->progress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/zhangling/danti15/BaseActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/zhangling/danti15/BaseActivity;->currentContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/zhangling/danti15/BaseActivity;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/zhangling/danti15/BaseActivity;->turnToClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$5(Lcom/zhangling/danti15/BaseActivity;I)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/zhangling/danti15/BaseActivity;->sendMsg(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/zhangling/danti15/BaseActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/zhangling/danti15/BaseActivity;->turnUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 375
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public static getSp()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 371
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private saveData()V
    .locals 4

    .prologue
    const-string v3, "global_beFirstLoad"

    .line 102
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "global_beFirstLoad"

    const-string v1, "1"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "IMEI"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->IMEI:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "IMSI"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->IMSI:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "deviceId"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "manufacturer"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->manufacturer:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "model"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->model:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "os"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->os:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "global_beFirstLoad"

    sget-object v1, Lcom/zhangling/danti15/BaseActivity;->global_beFirstLoad:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "global_firstStartTime"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->global_firstStartTime:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "global_runTime"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 115
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "global_lastTime"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->global_lastTime:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "line1Number"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->line1Number:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "callState"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->callState:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "phoneType"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->phoneType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SMSC"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->SMSC:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "simCountryIso"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->simCountryIso:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "simOperator"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->simOperator:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "simOperatorName"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->simOperatorName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "simSerialNumber"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->simSerialNumber:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "simState"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->simState:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "networkCountryIso"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->networkCountryIso:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "networkOperator"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->networkOperator:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "networkOperatorName"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->networkOperatorName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "networkType"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->networkType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "versionCode"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->versionCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "versionName"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->versionName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "packageName"

    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    return-void
.end method

.method public static saveData(Ljava/lang/String;I)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 421
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 422
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 423
    return-void
.end method

.method public static saveData(Ljava/lang/String;J)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 429
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 430
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 431
    return-void
.end method

.method public static saveData(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 425
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 426
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 427
    return-void
.end method

.method public static saveData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 417
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 418
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 419
    return-void
.end method

.method private sendMsg(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 242
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 243
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 244
    iget-object v1, p0, Lcom/zhangling/danti15/BaseActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 245
    return-void
.end method


# virtual methods
.method public checkLastRun()V
    .locals 10

    .prologue
    const/4 v8, -0x1

    .line 387
    sget-object v6, Lcom/zhangling/danti15/BaseActivity;->sp:Landroid/content/SharedPreferences;

    const-string v7, "book_lastRead_id"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 388
    .local v2, "id":I
    if-ne v8, v2, :cond_0

    .line 414
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/zhangling/danti15/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-class v7, Lcom/zhangling/danti15/R$string;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "listView_title_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zhangling/util/ReflectUtil;->getInt(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 391
    .local v4, "title":Ljava/lang/String;
    sget-object v6, Lcom/zhangling/danti15/BaseActivity;->sp:Landroid/content/SharedPreferences;

    const-string v7, "book_lastRead_datetime"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 392
    .local v0, "book_lastRead_datetime":J
    invoke-static {v0, v1}, Lcom/zhangling/util/StringUtil;->getDist(J)Ljava/lang/String;

    move-result-object v5

    .line 393
    .local v5, "tm":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v6, "\u60a8"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v6, "\u770b\u7684\u5185\u5bb9\u662f:\n\u300a"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v6, "\u300b\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/zhangling/danti15/BaseActivity;->currentContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v7, "\u63d0\u793a"

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "\u7ee7\u7eed"

    new-instance v8, Lcom/zhangling/danti15/BaseActivity$4;

    invoke-direct {v8, p0}, Lcom/zhangling/danti15/BaseActivity$4;-><init>(Lcom/zhangling/danti15/BaseActivity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 409
    const-string v7, "\u53d6\u6d88"

    new-instance v8, Lcom/zhangling/danti15/BaseActivity$5;

    invoke-direct {v8, p0}, Lcom/zhangling/danti15/BaseActivity$5;-><init>(Lcom/zhangling/danti15/BaseActivity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 413
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public createSP()V
    .locals 2

    .prologue
    .line 363
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 364
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->PREFERENCE_NAME:Ljava/lang/String;

    sget v1, Lcom/zhangling/danti15/BaseActivity;->MODE:I

    invoke-virtual {p0, v0, v1}, Lcom/zhangling/danti15/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/zhangling/danti15/BaseActivity;->sp:Landroid/content/SharedPreferences;

    .line 366
    :cond_0
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 367
    sget-object v0, Lcom/zhangling/danti15/BaseActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 368
    :cond_1
    return-void
.end method

.method public down_file(Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 325
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 326
    .local v4, "myURL":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 327
    .local v1, "conn":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 328
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 329
    .local v3, "is":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v6

    iput v6, p0, Lcom/zhangling/danti15/BaseActivity;->fileSize:I

    .line 330
    iget v6, p0, Lcom/zhangling/danti15/BaseActivity;->fileSize:I

    if-gtz v6, :cond_0

    .line 331
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "\u65e0\u6cd5\u83b7\u77e5\u6587\u4ef6\u5927\u5c0f "

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 332
    :cond_0
    if-nez v3, :cond_1

    .line 333
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "stream is null"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 336
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 337
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x400

    new-array v6, v6, [B

    sput-object v6, Lcom/zhangling/danti15/BaseActivity;->data:[B

    .line 338
    iput v7, p0, Lcom/zhangling/danti15/BaseActivity;->downLoadFileSize:I

    .line 339
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/zhangling/danti15/BaseActivity;->sendMsg(I)V

    .line 342
    :goto_0
    sget-object v6, Lcom/zhangling/danti15/BaseActivity;->data:[B

    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 343
    .local v5, "numread":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 351
    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/zhangling/danti15/BaseActivity;->sendMsg(I)V

    .line 353
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 354
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_1
    return-void

    .line 346
    :cond_2
    sget-object v6, Lcom/zhangling/danti15/BaseActivity;->data:[B

    invoke-virtual {v0, v6, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 347
    iget v6, p0, Lcom/zhangling/danti15/BaseActivity;->downLoadFileSize:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/zhangling/danti15/BaseActivity;->downLoadFileSize:I

    .line 349
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/zhangling/danti15/BaseActivity;->sendMsg(I)V

    goto :goto_0

    .line 355
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 356
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "tag"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getSMSCFromSms()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const-string v3, "service_center is not null"

    const-string v5, "date desc limit 1"

    const-string v10, ""

    .line 165
    const/4 v7, 0x0

    .line 166
    .local v7, "res":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "distinct(service_center)"

    aput-object v0, v2, v9

    .line 170
    .local v2, "queryColumnOut":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zhangling/danti15/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v8, "service_center is not null"

    const-string v8, "date desc limit 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 171
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 174
    :cond_0
    if-eqz v7, :cond_1

    const-string v0, ""

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/zhangling/danti15/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/sim"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v8, "service_center is not null"

    const-string v8, "date desc limit 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 180
    :cond_2
    if-eqz v7, :cond_4

    const-string v0, ""

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 181
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    .line 189
    :goto_0
    return-object v0

    .line 185
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    .line 186
    goto :goto_0

    .line 188
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v4

    .line 189
    goto :goto_0
.end method

.method protected initData()V
    .locals 0

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/zhangling/danti15/BaseActivity;->statisticsRunTime()V

    .line 156
    invoke-direct {p0}, Lcom/zhangling/danti15/BaseActivity;->saveData()V

    .line 157
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    iput-object p0, p0, Lcom/zhangling/danti15/BaseActivity;->currentContext:Landroid/content/Context;

    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/zhangling/danti15/BaseActivity;->createSP()V

    .line 146
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/zhangling/danti15/BaseActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/zhangling/danti15/BaseActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 443
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 444
    return-void
.end method

.method protected statisticsRunTime()V
    .locals 2

    .prologue
    .line 251
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zhangling/danti15/BaseActivity$2;

    invoke-direct {v1, p0}, Lcom/zhangling/danti15/BaseActivity$2;-><init>(Lcom/zhangling/danti15/BaseActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 272
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 273
    return-void
.end method

.method public test(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 282
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 283
    .local v0, "progress":Landroid/app/ProgressDialog;
    const-string v1, "\u6b63\u5728\u8bfb\u53d6\u6570\u636e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 285
    return-void
.end method

.method protected turnTo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "cls"    # Ljava/lang/Class;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/zhangling/danti15/BaseActivity;->currentContext:Landroid/content/Context;

    .line 290
    iput-object p2, p0, Lcom/zhangling/danti15/BaseActivity;->turnUrl:Ljava/lang/String;

    .line 291
    iput-object p3, p0, Lcom/zhangling/danti15/BaseActivity;->turnToClass:Ljava/lang/Class;

    .line 292
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/zhangling/danti15/BaseActivity;->currentContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangling/danti15/BaseActivity;->progress:Landroid/app/ProgressDialog;

    .line 293
    iget-object v0, p0, Lcom/zhangling/danti15/BaseActivity;->progress:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u8bfb\u53d6\u6570\u636e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/zhangling/danti15/BaseActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 296
    new-instance v0, Lcom/zhangling/danti15/BaseActivity$3;

    invoke-direct {v0, p0}, Lcom/zhangling/danti15/BaseActivity$3;-><init>(Lcom/zhangling/danti15/BaseActivity;)V

    .line 317
    invoke-virtual {v0}, Lcom/zhangling/danti15/BaseActivity$3;->start()V

    .line 319
    return-void
.end method

.method public wakeLockOn()V
    .locals 3

    .prologue
    .line 434
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/zhangling/danti15/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 435
    .local v0, "manager":Landroid/os/PowerManager;
    const v1, 0x2000000a

    const-string v2, "ATAAW"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangling/danti15/BaseActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 436
    iget-object v1, p0, Lcom/zhangling/danti15/BaseActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 437
    return-void
.end method
