.class final Lcom/zhangling/danti15/Add$1;
.super Ljava/lang/Object;
.source "Add.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangling/danti15/Add;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangling/danti15/Add;


# direct methods
.method constructor <init>(Lcom/zhangling/danti15/Add;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zhangling/danti15/Add$1;->this$0:Lcom/zhangling/danti15/Add;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/zhangling/danti15/Add;->add:Lcom/zhangling/danti15/Add;

    const-class v2, Lcom/zhangling/danti15/Select;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 122
    const-string v1, "index"

    sget-object v2, Lcom/zhangling/danti15/Add;->add:Lcom/zhangling/danti15/Add;

    iget v2, v2, Lcom/zhangling/danti15/Add;->index:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    sget-object v1, Lcom/zhangling/danti15/Add;->add:Lcom/zhangling/danti15/Add;

    invoke-virtual {v1, v0}, Lcom/zhangling/danti15/Add;->startActivity(Landroid/content/Intent;)V

    .line 126
    sget-object v1, Lcom/zhangling/danti15/Add;->add:Lcom/zhangling/danti15/Add;

    invoke-virtual {v1}, Lcom/zhangling/danti15/Add;->finish()V

    .line 127
    return-void
.end method
