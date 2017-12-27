.class LDaemon/DownLoad/DBOpenHelper$ADInfoDeleter;
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
    name = "ADInfoDeleter"
.end annotation


# static fields
.field private static final DELETE_AD_INFO_SQL:Ljava/lang/String; = "DELETE FROM file WHERE version = ? AND packnum =?"


# instance fields
.field private mPackNum:I

.field private mVersion:I

.field final synthetic this$0:LDaemon/DownLoad/DBOpenHelper;


# direct methods
.method constructor <init>(LDaemon/DownLoad/DBOpenHelper;II)V
    .locals 0
    .param p2, "version"    # I
    .param p3, "packNum"    # I

    .prologue
    .line 571
    iput-object p1, p0, LDaemon/DownLoad/DBOpenHelper$ADInfoDeleter;->this$0:LDaemon/DownLoad/DBOpenHelper;

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput p2, p0, LDaemon/DownLoad/DBOpenHelper$ADInfoDeleter;->mVersion:I

    .line 570
    iput p3, p0, LDaemon/DownLoad/DBOpenHelper$ADInfoDeleter;->mPackNum:I

    return-void
.end method


# virtual methods
.method public doWork(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 579
    const-string v0, "DELETE FROM file WHERE version = ? AND packnum =?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, LDaemon/DownLoad/DBOpenHelper$ADInfoDeleter;->mVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, LDaemon/DownLoad/DBOpenHelper$ADInfoDeleter;->mPackNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    return-void
.end method
