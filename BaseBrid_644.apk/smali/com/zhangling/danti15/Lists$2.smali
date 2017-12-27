.class final Lcom/zhangling/danti15/Lists$2;
.super Ljava/lang/Object;
.source "Lists.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangling/danti15/Lists;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/zhangling/danti15/Lists$2;->this$0:Lcom/zhangling/danti15/Lists;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/zhangling/danti15/Lists$2;->this$0:Lcom/zhangling/danti15/Lists;

    iput p2, v0, Lcom/zhangling/danti15/Lists;->book_firstVisibleItem_index:I

    .line 145
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 150
    if-nez p2, :cond_1

    .line 151
    sget-object v0, Lcom/zhangling/danti15/Lists;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "book_firstVisibleItem_index"

    iget-object v2, p0, Lcom/zhangling/danti15/Lists$2;->this$0:Lcom/zhangling/danti15/Lists;

    iget v2, v2, Lcom/zhangling/danti15/Lists;->book_firstVisibleItem_index:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 152
    sget-object v0, Lcom/zhangling/danti15/Lists;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    iget-object v0, p0, Lcom/zhangling/danti15/Lists$2;->this$0:Lcom/zhangling/danti15/Lists;

    iget v0, v0, Lcom/zhangling/danti15/Lists;->book_firstVisibleItem_index:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 154
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zhangling/danti15/Lists;->sendMsg(I)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zhangling/danti15/Lists;->sendMsg(I)V

    goto :goto_0
.end method
