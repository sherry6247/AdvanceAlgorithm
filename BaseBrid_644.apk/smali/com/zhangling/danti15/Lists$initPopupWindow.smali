.class Lcom/zhangling/danti15/Lists$initPopupWindow;
.super Ljava/util/TimerTask;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangling/danti15/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "initPopupWindow"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangling/danti15/Lists;


# direct methods
.method private constructor <init>(Lcom/zhangling/danti15/Lists;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/zhangling/danti15/Lists$initPopupWindow;->this$0:Lcom/zhangling/danti15/Lists;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangling/danti15/Lists;Lcom/zhangling/danti15/Lists$initPopupWindow;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/zhangling/danti15/Lists$initPopupWindow;-><init>(Lcom/zhangling/danti15/Lists;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 254
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 255
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 256
    invoke-static {}, Lcom/zhangling/danti15/Lists;->access$2()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 257
    return-void
.end method
