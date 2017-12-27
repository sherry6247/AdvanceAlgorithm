.class LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;
.super Ljava/lang/Object;
.source "DBOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDaemon/DownLoad/DBOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DOWNLOAD_TASK_INFO"
.end annotation


# static fields
.field public static final DEFAULT_INT_VALUE:I = 0x0

.field public static final DEFAULT_STRING_VALUE:Ljava/lang/String; = ""


# instance fields
.field public mFileSize:I

.field public mPosition:I

.field public mThreadeId:I

.field public mUri:Ljava/lang/String;

.field final synthetic this$0:LDaemon/DownLoad/DBOpenHelper;


# direct methods
.method constructor <init>(LDaemon/DownLoad/DBOpenHelper;Ljava/lang/String;III)V
    .locals 0
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "fileSize"    # I
    .param p4, "threadId"    # I
    .param p5, "position"    # I

    .prologue
    .line 69
    iput-object p1, p0, LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;->this$0:LDaemon/DownLoad/DBOpenHelper;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;->mUri:Ljava/lang/String;

    .line 66
    iput p3, p0, LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;->mFileSize:I

    .line 67
    iput p4, p0, LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;->mThreadeId:I

    .line 68
    iput p5, p0, LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;->mPosition:I

    return-void
.end method
