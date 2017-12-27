.class abstract LDaemon/DownLoad/DBOpenHelper$DownloadTableModifier;
.super Ljava/lang/Object;
.source "DBOpenHelper.java"

# interfaces
.implements LDaemon/DownLoad/DBOpenHelper$TableOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDaemon/DownLoad/DBOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "DownloadTableModifier"
.end annotation


# instance fields
.field protected mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:LDaemon/DownLoad/DBOpenHelper;


# direct methods
.method constructor <init>(LDaemon/DownLoad/DBOpenHelper;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;>;"
    iput-object p1, p0, LDaemon/DownLoad/DBOpenHelper$DownloadTableModifier;->this$0:LDaemon/DownLoad/DBOpenHelper;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p2, p0, LDaemon/DownLoad/DBOpenHelper$DownloadTableModifier;->mInfos:Ljava/util/List;

    return-void
.end method
