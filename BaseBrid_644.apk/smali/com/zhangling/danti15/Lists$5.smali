.class final Lcom/zhangling/danti15/Lists$5;
.super Ljava/lang/Object;
.source "Lists.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangling/danti15/Lists;->showPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangling/danti15/Lists;


# direct methods
.method constructor <init>(Lcom/zhangling/danti15/Lists;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zhangling/danti15/Lists$5;->this$0:Lcom/zhangling/danti15/Lists;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/zhangling/danti15/Lists$5;->this$0:Lcom/zhangling/danti15/Lists;

    invoke-static {v0}, Lcom/zhangling/danti15/Lists;->access$3(Lcom/zhangling/danti15/Lists;)I

    move-result v0

    iget-object v1, p0, Lcom/zhangling/danti15/Lists$5;->this$0:Lcom/zhangling/danti15/Lists;

    invoke-static {v1}, Lcom/zhangling/danti15/Lists;->access$6(Lcom/zhangling/danti15/Lists;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 330
    iget-object v0, p0, Lcom/zhangling/danti15/Lists$5;->this$0:Lcom/zhangling/danti15/Lists;

    invoke-static {v0}, Lcom/zhangling/danti15/Lists;->access$3(Lcom/zhangling/danti15/Lists;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/zhangling/danti15/Lists;->access$5(Lcom/zhangling/danti15/Lists;I)V

    .line 331
    iget-object v0, p0, Lcom/zhangling/danti15/Lists$5;->this$0:Lcom/zhangling/danti15/Lists;

    invoke-virtual {v0}, Lcom/zhangling/danti15/Lists;->initData()V

    .line 336
    :goto_0
    return-void

    .line 333
    :cond_0
    sget-object v0, Lcom/zhangling/danti15/Lists;->lists:Lcom/zhangling/danti15/Lists;

    const-string v1, "\u5df2\u7ecf\u662f\u6700\u540e\u4e00\u9875\u4e86"

    invoke-static {v0, v1}, Lcom/zhangling/util/Toasts;->malert(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
