.class final Lcom/zhangling/danti15/Main$2;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangling/danti15/Main;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangling/danti15/Main;


# direct methods
.method constructor <init>(Lcom/zhangling/danti15/Main;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zhangling/danti15/Main$2;->this$0:Lcom/zhangling/danti15/Main;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {}, Lcom/zhangling/danti15/Main;->access$0()Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 128
    .local v0, "id":I
    if-nez v0, :cond_2

    .line 129
    invoke-static {}, Lcom/zhangling/danti15/Lists;->showPop()V

    .line 133
    :goto_0
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 134
    sget-object v1, Lcom/zhangling/danti15/History;->history:Lcom/zhangling/danti15/History;

    if-eqz v1, :cond_0

    .line 135
    sget-object v1, Lcom/zhangling/danti15/History;->history:Lcom/zhangling/danti15/History;

    invoke-virtual {v1}, Lcom/zhangling/danti15/History;->expandableListView()V

    .line 138
    :cond_0
    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 139
    sget-object v1, Lcom/zhangling/danti15/Booking;->booking:Lcom/zhangling/danti15/Booking;

    if-eqz v1, :cond_1

    .line 140
    sget-object v1, Lcom/zhangling/danti15/Booking;->booking:Lcom/zhangling/danti15/Booking;

    invoke-virtual {v1}, Lcom/zhangling/danti15/Booking;->initData()V

    .line 143
    :cond_1
    return-void

    .line 131
    :cond_2
    invoke-static {}, Lcom/zhangling/danti15/Lists;->hiddenPop()V

    goto :goto_0
.end method
