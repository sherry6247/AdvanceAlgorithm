.class final Lcom/zhangling/danti15/Booking$1;
.super Ljava/lang/Object;
.source "Booking.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangling/danti15/Booking;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangling/danti15/Booking;


# direct methods
.method constructor <init>(Lcom/zhangling/danti15/Booking;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zhangling/danti15/Booking$1;->this$0:Lcom/zhangling/danti15/Booking;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 51
    .line 52
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v3, 0x7f060002

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 51
    check-cast v2, Landroid/widget/TextView;

    .line 54
    .local v2, "tv_title":Landroid/widget/TextView;
    :try_start_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 55
    .local v0, "id":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 56
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/zhangling/danti15/Booking$1;->this$0:Lcom/zhangling/danti15/Booking;

    const-class v4, Lcom/zhangling/danti15/Select;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 57
    const-string v3, "index"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    const-string v3, "notSaveDate"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v3, p0, Lcom/zhangling/danti15/Booking$1;->this$0:Lcom/zhangling/danti15/Booking;

    invoke-virtual {v3, v1}, Lcom/zhangling/danti15/Booking;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0    # "id":I
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v3

    goto :goto_0
.end method
