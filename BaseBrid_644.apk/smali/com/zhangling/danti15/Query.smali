.class public Lcom/zhangling/danti15/Query;
.super Lcom/zhangling/danti15/BaseActivity;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangling/danti15/Query$MyAdapter;
    }
.end annotation


# instance fields
.field button:Landroid/widget/Button;

.field listview:Landroid/widget/ListView;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field query:Lcom/zhangling/danti15/Query;

.field textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/zhangling/danti15/BaseActivity;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/zhangling/danti15/Query;->query:Lcom/zhangling/danti15/Query;

    .line 32
    iput-object v0, p0, Lcom/zhangling/danti15/Query;->textView:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/zhangling/danti15/Query;->button:Landroid/widget/Button;

    .line 34
    iput-object v0, p0, Lcom/zhangling/danti15/Query;->listview:Landroid/widget/ListView;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/zhangling/danti15/Query;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zhangling/danti15/Query;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public initData()V
    .locals 11

    .prologue
    .line 78
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v3, "listItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v9, p0, Lcom/zhangling/danti15/Query;->textView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 80
    .local v6, "o":Ljava/lang/CharSequence;
    invoke-static {v6}, Lcom/zhangling/util/StringUtil;->beKong(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 81
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "s":Ljava/lang/String;
    sget-object v9, Lcom/zhangling/danti15/Lists;->al_viewlist_title:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    .line 83
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 98
    .end local v0    # "i":I
    .end local v2    # "length":I
    .end local v7    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 99
    new-instance v4, Lcom/zhangling/danti15/Query$MyAdapter;

    invoke-direct {v4, p0, p0, v3}, Lcom/zhangling/danti15/Query$MyAdapter;-><init>(Lcom/zhangling/danti15/Query;Landroid/content/Context;Ljava/util/List;)V

    .line 101
    .local v4, "mAdapter":Lcom/zhangling/danti15/Query$MyAdapter;
    iget-object v9, p0, Lcom/zhangling/danti15/Query;->listview:Landroid/widget/ListView;

    invoke-virtual {v9, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    .end local v4    # "mAdapter":Lcom/zhangling/danti15/Query$MyAdapter;
    :goto_1
    return-void

    .line 84
    .restart local v0    # "i":I
    .restart local v2    # "length":I
    .restart local v7    # "s":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v9, Lcom/zhangling/danti15/Lists;->al_viewlist_title:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 86
    .local v8, "title":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 87
    .local v1, "ind":I
    const/4 v9, -0x1

    if-ge v9, v1, :cond_2

    .line 89
    const-string v9, "title"

    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v9, "index"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v9, "info"

    const-string v10, ""

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v9, "img"

    const v10, 0x7f020013

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v9, "img1"

    const v10, 0x7f020001

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "i":I
    .end local v1    # "ind":I
    .end local v2    # "length":I
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    :cond_3
    const-string v9, "\u5f88\u62b1\u6b49\uff0c\u67e5\u8be2\u4e3a\u7a7a"

    invoke-static {p0, v9}, Lcom/zhangling/util/Toasts;->malert(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/zhangling/danti15/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iput-object p0, p0, Lcom/zhangling/danti15/Query;->query:Lcom/zhangling/danti15/Query;

    .line 42
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/zhangling/danti15/Query;->setContentView(I)V

    .line 43
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangling/danti15/Query;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 45
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/zhangling/danti15/Query;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangling/danti15/Query;->textView:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/zhangling/danti15/Query;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangling/danti15/Query;->button:Landroid/widget/Button;

    .line 48
    iget-object v0, p0, Lcom/zhangling/danti15/Query;->button:Landroid/widget/Button;

    new-instance v1, Lcom/zhangling/danti15/Query$1;

    invoke-direct {v1, p0}, Lcom/zhangling/danti15/Query$1;-><init>(Lcom/zhangling/danti15/Query;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/zhangling/danti15/Query;->textView:Landroid/widget/TextView;

    new-instance v1, Lcom/zhangling/danti15/Query$2;

    invoke-direct {v1, p0}, Lcom/zhangling/danti15/Query$2;-><init>(Lcom/zhangling/danti15/Query;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 70
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/zhangling/danti15/Query;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangling/danti15/Query;->listview:Landroid/widget/ListView;

    .line 74
    const-string v0, "\u8bf7\u8f93\u5165\u67e5\u8be2\u7684\u6587\u5b57"

    invoke-static {p0, v0}, Lcom/zhangling/util/Toasts;->lalert(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 110
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 111
    invoke-static {v1}, Lcom/zhangling/danti15/Main;->sendMsg(I)V

    move v0, v1

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
