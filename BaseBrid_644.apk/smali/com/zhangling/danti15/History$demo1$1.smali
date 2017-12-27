.class final Lcom/zhangling/danti15/History$demo1$1;
.super Ljava/lang/Object;
.source "History.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangling/danti15/History$demo1;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zhangling/danti15/History$demo1;


# direct methods
.method constructor <init>(Lcom/zhangling/danti15/History$demo1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zhangling/danti15/History$demo1$1;->this$1:Lcom/zhangling/danti15/History$demo1;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 237
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/zhangling/danti15/History$demo1$1;->this$1:Lcom/zhangling/danti15/History$demo1;

    invoke-static {v2}, Lcom/zhangling/danti15/History$demo1;->access$0(Lcom/zhangling/danti15/History$demo1;)Lcom/zhangling/danti15/History;

    move-result-object v2

    const-class v3, Lcom/zhangling/danti15/Add;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 241
    .local v0, "id":I
    const-string v2, "index"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    const-string v2, "notSaveDate"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    iget-object v2, p0, Lcom/zhangling/danti15/History$demo1$1;->this$1:Lcom/zhangling/danti15/History$demo1;

    invoke-static {v2}, Lcom/zhangling/danti15/History$demo1;->access$0(Lcom/zhangling/danti15/History$demo1;)Lcom/zhangling/danti15/History;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zhangling/danti15/History;->startActivity(Landroid/content/Intent;)V

    .line 244
    return-void
.end method
