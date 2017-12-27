.class LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoDeleter;
.super Ljava/lang/Object;
.source "DBOpenHelper.java"

# interfaces
.implements LDaemon/DownLoad/DBOpenHelper$TableOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDaemon/DownLoad/DBOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadTaskInfoDeleter"
.end annotation


# static fields
.field private static final DELETE_TASK_INFO_SQL:Ljava/lang/String; = "DELETE FROM filedown WHERE downpath = ?"


# instance fields
.field private mUri:Ljava/lang/String;

.field final synthetic this$0:LDaemon/DownLoad/DBOpenHelper;


# direct methods
.method constructor <init>(LDaemon/DownLoad/DBOpenHelper;Ljava/lang/String;)V
    .locals 0
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 308
    iput-object p1, p0, LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoDeleter;->this$0:LDaemon/DownLoad/DBOpenHelper;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p2, p0, LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoDeleter;->mUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doWork(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 315
    const-string v0, "DELETE FROM filedown WHERE downpath = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoDeleter;->mUri:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    return-void
.end method
