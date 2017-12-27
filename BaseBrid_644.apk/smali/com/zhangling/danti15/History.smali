.class public Lcom/zhangling/danti15/History;
.super Landroid/app/ExpandableListActivity;
.source "History.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangling/danti15/History$demo1;
    }
.end annotation


# static fields
.field public static history:Lcom/zhangling/danti15/History;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/zhangling/danti15/History;->history:Lcom/zhangling/danti15/History;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public expandableListView()V
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/zhangling/danti15/History;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 42
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 45
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_1

    .line 48
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/zhangling/danti15/History;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/zhangling/danti15/History;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sput-object p0, Lcom/zhangling/danti15/History;->history:Lcom/zhangling/danti15/History;

    .line 34
    new-instance v0, Lcom/zhangling/danti15/History$demo1;

    invoke-direct {v0, p0, p0}, Lcom/zhangling/danti15/History$demo1;-><init>(Lcom/zhangling/danti15/History;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/zhangling/danti15/History;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 35
    invoke-virtual {p0}, Lcom/zhangling/danti15/History;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setCacheColorHint(I)V

    .line 36
    invoke-virtual {p0}, Lcom/zhangling/danti15/History;->expandableListView()V

    .line 38
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 53
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 54
    invoke-static {v1}, Lcom/zhangling/danti15/Main;->sendMsg(I)V

    move v0, v1

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
