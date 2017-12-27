.class final Lcom/zhangling/danti15/Select$2;
.super Ljava/lang/Object;
.source "Select.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangling/danti15/Select;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/zhangling/danti15/Select;


# direct methods
.method constructor <init>(Lcom/zhangling/danti15/Select;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zhangling/danti15/Select$2;->this$0:Lcom/zhangling/danti15/Select;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/zhangling/danti15/Select$2;)Lcom/zhangling/danti15/Select;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/zhangling/danti15/Select$2;->this$0:Lcom/zhangling/danti15/Select;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "ind"    # I
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
    .line 137
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/zhangling/danti15/Select$2;->this$0:Lcom/zhangling/danti15/Select;

    iget v1, v0, Lcom/zhangling/danti15/Select;->res:I

    add-int/2addr v1, p3

    iput v1, v0, Lcom/zhangling/danti15/Select;->res:I

    .line 138
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zhangling/danti15/Select$2$1;

    invoke-direct {v1, p0}, Lcom/zhangling/danti15/Select$2$1;-><init>(Lcom/zhangling/danti15/Select$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 156
    return-void
.end method
