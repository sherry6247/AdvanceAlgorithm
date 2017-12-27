.class public Lcom/zhangling/danti15/Booking;
.super Lcom/zhangling/danti15/BaseActivity;
.source "Booking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangling/danti15/Booking$MyAdapter;
    }
.end annotation


# static fields
.field public static booking:Lcom/zhangling/danti15/Booking;


# instance fields
.field listView:Landroid/widget/ListView;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/zhangling/danti15/Booking;->booking:Lcom/zhangling/danti15/Booking;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/zhangling/danti15/BaseActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangling/danti15/Booking;->listView:Landroid/widget/ListView;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/zhangling/danti15/Booking;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zhangling/danti15/Booking;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public initData()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 87
    sget-object v10, Lcom/zhangling/danti15/Booking;->sp:Landroid/content/SharedPreferences;

    sget-object v11, Lcom/zhangling/danti15/Booking;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p0, v10, v11}, Lcom/zhangling/db/BookingInfo;->init(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)Lcom/zhangling/db/BookingInfo;

    move-result-object v4

    .line 88
    .local v4, "info":Lcom/zhangling/db/BookingInfo;
    invoke-virtual {v4}, Lcom/zhangling/db/BookingInfo;->queryBooking2()Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, "_list":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 90
    .local v5, "length":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v6, "listItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 104
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 105
    new-instance v7, Lcom/zhangling/danti15/Booking$MyAdapter;

    invoke-direct {v7, p0, p0, v6}, Lcom/zhangling/danti15/Booking$MyAdapter;-><init>(Lcom/zhangling/danti15/Booking;Landroid/content/Context;Ljava/util/List;)V

    .line 107
    .local v7, "mAdapter":Lcom/zhangling/danti15/Booking$MyAdapter;
    iget-object v10, p0, Lcom/zhangling/danti15/Booking;->listView:Landroid/widget/ListView;

    invoke-virtual {v10, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    .end local v7    # "mAdapter":Lcom/zhangling/danti15/Booking$MyAdapter;
    :goto_1
    return-void

    .line 92
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v8, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 94
    .local v3, "id":Ljava/lang/String;
    const-string v10, "id"

    invoke-virtual {v8, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p0}, Lcom/zhangling/danti15/Booking;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-class v12, Lcom/zhangling/danti15/R$string;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v10, "listView_title_"

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/zhangling/util/ReflectUtil;->getInt(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, "title":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 97
    .local v1, "date":Ljava/lang/String;
    const-string v10, "title"

    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v10, "info"

    invoke-virtual {v8, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v10, "img"

    const v11, 0x7f020013

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v10, "img1"

    const v11, 0x7f020001

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 109
    .end local v1    # "date":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v8    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "title":Ljava/lang/String;
    :cond_1
    const-string v10, "\u60a8\u6682\u672a\u6536\u85cf"

    invoke-static {p0, v10}, Lcom/zhangling/util/Toasts;->malert(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, -0x1

    .line 35
    invoke-super {p0, p1}, Lcom/zhangling/danti15/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sput-object p0, Lcom/zhangling/danti15/Booking;->booking:Lcom/zhangling/danti15/Booking;

    .line 37
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangling/danti15/Booking;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 39
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 42
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zhangling/danti15/Booking;->listView:Landroid/widget/ListView;

    .line 44
    iget-object v1, p0, Lcom/zhangling/danti15/Booking;->listView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 45
    invoke-virtual {p0}, Lcom/zhangling/danti15/Booking;->initData()V

    .line 46
    iget-object v1, p0, Lcom/zhangling/danti15/Booking;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/zhangling/danti15/Booking$1;

    invoke-direct {v2, p0}, Lcom/zhangling/danti15/Booking$1;-><init>(Lcom/zhangling/danti15/Booking;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    iget-object v1, p0, Lcom/zhangling/danti15/Booking;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, v1, v0}, Lcom/zhangling/danti15/Booking;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 115
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 116
    invoke-static {v1}, Lcom/zhangling/danti15/Main;->sendMsg(I)V

    move v0, v1

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
