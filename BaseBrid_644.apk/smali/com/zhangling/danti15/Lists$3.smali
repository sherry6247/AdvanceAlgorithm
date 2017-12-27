.class final Lcom/zhangling/danti15/Lists$3;
.super Ljava/lang/Object;
.source "Lists.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangling/danti15/Lists;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/zhangling/danti15/Lists;


# direct methods
.method constructor <init>(Lcom/zhangling/danti15/Lists;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zhangling/danti15/Lists$3;->this$0:Lcom/zhangling/danti15/Lists;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
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
    .line 165
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/zhangling/danti15/Lists$3;->this$0:Lcom/zhangling/danti15/Lists;

    const-class v3, Lcom/zhangling/danti15/Add;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 167
    iget-object v2, p0, Lcom/zhangling/danti15/Lists$3;->this$0:Lcom/zhangling/danti15/Lists;

    invoke-static {v2}, Lcom/zhangling/danti15/Lists;->access$3(Lcom/zhangling/danti15/Lists;)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/zhangling/danti15/Lists$3;->this$0:Lcom/zhangling/danti15/Lists;

    invoke-static {v3}, Lcom/zhangling/danti15/Lists;->access$4(Lcom/zhangling/danti15/Lists;)I

    move-result v3

    mul-int/2addr v2, v3

    add-int v0, v2, p3

    .line 168
    .local v0, "ind":I
    sget-object v2, Lcom/zhangling/danti15/Lists;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "book_firstVisibleItem_index"

    invoke-interface {v2, v3, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 169
    sget-object v2, Lcom/zhangling/danti15/Lists;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    const-string v2, "index"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    iget-object v2, p0, Lcom/zhangling/danti15/Lists$3;->this$0:Lcom/zhangling/danti15/Lists;

    invoke-virtual {v2, v1}, Lcom/zhangling/danti15/Lists;->startActivity(Landroid/content/Intent;)V

    .line 173
    return-void
.end method
