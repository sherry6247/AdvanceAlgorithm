.class public Lcom/zhangling/danti15/Lists;
.super Lcom/zhangling/danti15/BaseActivity;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangling/danti15/Lists$MyAdapter;,
        Lcom/zhangling/danti15/Lists$initPopupWindow;
    }
.end annotation


# static fields
.field private static final DIALOG_SINGLE_CHOICE:I = 0x5

.field public static al_viewlist_content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static al_viewlist_title:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static handler:Landroid/os/Handler;

.field public static lists:Lcom/zhangling/danti15/Lists;


# instance fields
.field public book_firstVisibleItem_index:I

.field private book_last_view_page_index:I

.field editText:Landroid/widget/EditText;

.field list:Landroid/widget/ListView;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field mPopupWindow:Landroid/widget/PopupWindow;

.field next:Landroid/widget/Button;

.field private pageIndex:I

.field private pageSize:I

.field pre:Landroid/widget/Button;

.field private total:I

.field viewView_size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/zhangling/danti15/Lists;->lists:Lcom/zhangling/danti15/Lists;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zhangling/danti15/Lists;->al_viewlist_title:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zhangling/danti15/Lists;->al_viewlist_content:Ljava/util/List;

    .line 260
    new-instance v0, Lcom/zhangling/danti15/Lists$1;

    invoke-direct {v0}, Lcom/zhangling/danti15/Lists$1;-><init>()V

    sput-object v0, Lcom/zhangling/danti15/Lists;->handler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/zhangling/danti15/BaseActivity;-><init>()V

    .line 52
    iput v2, p0, Lcom/zhangling/danti15/Lists;->pageIndex:I

    .line 56
    const/16 v0, 0xa

    iput v0, p0, Lcom/zhangling/danti15/Lists;->pageSize:I

    .line 60
    iput v2, p0, Lcom/zhangling/danti15/Lists;->total:I

    .line 65
    iput v2, p0, Lcom/zhangling/danti15/Lists;->book_last_view_page_index:I

    .line 71
    iput v2, p0, Lcom/zhangling/danti15/Lists;->book_firstVisibleItem_index:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangling/danti15/Lists;->viewView_size:I

    .line 88
    iput-object v1, p0, Lcom/zhangling/danti15/Lists;->list:Landroid/widget/ListView;

    .line 286
    iput-object v1, p0, Lcom/zhangling/danti15/Lists;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 296
    iput-object v1, p0, Lcom/zhangling/danti15/Lists;->editText:Landroid/widget/EditText;

    .line 297
    iput-object v1, p0, Lcom/zhangling/danti15/Lists;->pre:Landroid/widget/Button;

    .line 298
    iput-object v1, p0, Lcom/zhangling/danti15/Lists;->next:Landroid/widget/Button;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/zhangling/danti15/Lists;)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/zhangling/danti15/Lists;->showPopupWindow()V

    return-void
.end method

.method static synthetic access$1(Lcom/zhangling/danti15/Lists;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zhangling/danti15/Lists;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$2()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lcom/zhangling/danti15/Lists;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/zhangling/danti15/Lists;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/zhangling/danti15/Lists;->pageIndex:I

    return v0
.end method

.method static synthetic access$4(Lcom/zhangling/danti15/Lists;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/zhangling/danti15/Lists;->pageSize:I

    return v0
.end method

.method static synthetic access$5(Lcom/zhangling/danti15/Lists;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/zhangling/danti15/Lists;->pageIndex:I

    return-void
.end method

.method static synthetic access$6(Lcom/zhangling/danti15/Lists;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/zhangling/danti15/Lists;->total:I

    return v0
.end method

.method public static hiddenPop()V
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zhangling/danti15/Lists;->sendMsg(I)V

    .line 371
    return-void
.end method

.method public static sendMsg(I)V
    .locals 2
    .param p0, "flag"    # I

    .prologue
    .line 281
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 282
    .local v0, "msg":Landroid/os/Message;
    iput p0, v0, Landroid/os/Message;->what:I

    .line 283
    sget-object v1, Lcom/zhangling/danti15/Lists;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 284
    return-void
.end method

.method public static showPop()V
    .locals 1

    .prologue
    .line 293
    sget-object v0, Lcom/zhangling/danti15/Lists;->lists:Lcom/zhangling/danti15/Lists;

    invoke-direct {v0}, Lcom/zhangling/danti15/Lists;->showPopupWindow()V

    .line 294
    return-void
.end method

.method private showPopupWindow()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 301
    iget-object v1, p0, Lcom/zhangling/danti15/Lists;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    .line 302
    sget-object v1, Lcom/zhangling/danti15/Lists;->lists:Lcom/zhangling/danti15/Lists;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/zhangling/danti15/Lists;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/zhangling/danti15/Lists;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/zhangling/danti15/Lists;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030006

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 304
    .local v0, "lists_pop":Landroid/view/View;
    iget-object v1, p0, Lcom/zhangling/danti15/Lists;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v1, :cond_1

    .line 305
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/zhangling/danti15/Lists;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/zhangling/danti15/Lists;->editText:Landroid/widget/EditText;

    if-nez v1, :cond_2

    .line 307
    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/zhangling/danti15/Lists;->editText:Landroid/widget/EditText;

    .line 308
    :cond_2
    iget-object v1, p0, Lcom/zhangling/danti15/Lists;->pre:Landroid/widget/Button;

    if-nez v1, :cond_3

    .line 309
    const v1, 0x7f06000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/zhangling/danti15/Lists;->pre:Landroid/widget/Button;

    .line 310
    :cond_3
    iget-object v1, p0, Lcom/zhangling/danti15/Lists;->next:Landroid/widget/Button;

    if-nez v1, :cond_4

    .line 311
    const v1, 0x7f06000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/zhangling/danti15/Lists;->next:Landroid/widget/Button;

    .line 312
    :cond_4
    iget-object v1, p0, Lcom/zhangling/danti15/Lists;->pre:Landroid/widget/Button;

    new-instance v2, Lcom/zhangling/danti15/Lists$4;

    invoke-direct {v2, p0}, Lcom/zhangling/danti15/Lists$4;-><init>(Lcom/zhangling/danti15/Lists;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v1, p0, Lcom/zhangling/danti15/Lists;->next:Landroid/widget/Button;

    new-instance v2, Lcom/zhangling/danti15/Lists$5;

    invoke-direct {v2, p0}, Lcom/zhangling/danti15/Lists$5;-><init>(Lcom/zhangling/danti15/Lists;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v1, p0, Lcom/zhangling/danti15/Lists;->editText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/zhangling/danti15/Lists;->pageIndex:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zhangling/danti15/Lists;->total:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v1, p0, Lcom/zhangling/danti15/Lists;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 344
    iget-object v1, p0, Lcom/zhangling/danti15/Lists;->editText:Landroid/widget/EditText;

    new-instance v2, Lcom/zhangling/danti15/Lists$6;

    invoke-direct {v2, p0}, Lcom/zhangling/danti15/Lists$6;-><init>(Lcom/zhangling/danti15/Lists;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 351
    iget-object v1, p0, Lcom/zhangling/danti15/Lists;->editText:Landroid/widget/EditText;

    new-instance v2, Lcom/zhangling/danti15/Lists$7;

    invoke-direct {v2, p0}, Lcom/zhangling/danti15/Lists$7;-><init>(Lcom/zhangling/danti15/Lists;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/zhangling/danti15/Lists;->mPopupWindow:Landroid/widget/PopupWindow;

    sget-object v2, Lcom/zhangling/danti15/Lists;->lists:Lcom/zhangling/danti15/Lists;

    iget-object v2, v2, Lcom/zhangling/danti15/Lists;->list:Landroid/widget/ListView;

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public initData()V
    .locals 11

    .prologue
    .line 188
    iget v7, p0, Lcom/zhangling/danti15/Lists;->pageSize:I

    iget v8, p0, Lcom/zhangling/danti15/Lists;->pageIndex:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    mul-int v6, v7, v8

    .line 189
    .local v6, "start_i":I
    iget v7, p0, Lcom/zhangling/danti15/Lists;->pageSize:I

    add-int v0, v6, v7

    .line 191
    .local v0, "end_i":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v3, "listItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    sget-object v7, Lcom/zhangling/danti15/Lists;->al_viewlist_title:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 193
    .local v2, "length":I
    move v1, v6

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    if-lt v1, v2, :cond_2

    .line 201
    :cond_0
    const-string v7, "book_last_view_page_index"

    iget v8, p0, Lcom/zhangling/danti15/Lists;->pageIndex:I

    invoke-static {v7, v8}, Lcom/zhangling/danti15/BaseActivity;->saveData(Ljava/lang/String;I)V

    .line 203
    const v7, 0x7f060008

    invoke-virtual {p0, v7}, Lcom/zhangling/danti15/Lists;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/zhangling/danti15/Lists;->list:Landroid/widget/ListView;

    .line 205
    new-instance v4, Lcom/zhangling/danti15/Lists$MyAdapter;

    invoke-direct {v4, p0, p0, v3}, Lcom/zhangling/danti15/Lists$MyAdapter;-><init>(Lcom/zhangling/danti15/Lists;Landroid/content/Context;Ljava/util/List;)V

    .line 207
    .local v4, "mAdapter":Lcom/zhangling/danti15/Lists$MyAdapter;
    iget-object v7, p0, Lcom/zhangling/danti15/Lists;->list:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    iget-object v7, p0, Lcom/zhangling/danti15/Lists;->editText:Landroid/widget/EditText;

    if-eqz v7, :cond_1

    .line 210
    iget-object v7, p0, Lcom/zhangling/danti15/Lists;->editText:Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/zhangling/danti15/Lists;->pageIndex:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/zhangling/danti15/Lists;->total:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_1
    return-void

    .line 194
    .end local v4    # "mAdapter":Lcom/zhangling/danti15/Lists$MyAdapter;
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 195
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "title"

    sget-object v7, Lcom/zhangling/danti15/Lists;->al_viewlist_title:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/zhangling/util/StringUtil;->unTihuan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v8, "info"

    sget-object v7, Lcom/zhangling/danti15/Lists;->al_viewlist_content:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v10, 0x14

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zhangling/util/StringUtil;->unTihuan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v7, "img"

    const v8, 0x7f020013

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v7, "img1"

    const v8, 0x7f020001

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x1

    const-class v11, Lcom/zhangling/danti15/R$string;

    .line 94
    invoke-super {p0, p1}, Lcom/zhangling/danti15/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    sput-object p0, Lcom/zhangling/danti15/Lists;->lists:Lcom/zhangling/danti15/Lists;

    .line 96
    sget-boolean v8, Lcom/zhangling/danti15/Lists;->beNoCheckLastRun:Z

    if-eqz v8, :cond_0

    .line 97
    sput-boolean v12, Lcom/zhangling/danti15/Lists;->beNoCheckLastRun:Z

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/zhangling/danti15/Lists;->checkLastRun()V

    .line 100
    const v8, 0x7f030002

    invoke-virtual {p0, v8}, Lcom/zhangling/danti15/Lists;->setContentView(I)V

    .line 101
    sget-object v8, Lcom/zhangling/danti15/Lists;->sp:Landroid/content/SharedPreferences;

    if-nez v8, :cond_1

    .line 102
    invoke-super {p0}, Lcom/zhangling/danti15/BaseActivity;->initData()V

    .line 103
    :cond_1
    sget-object v8, Lcom/zhangling/danti15/Lists;->sp:Landroid/content/SharedPreferences;

    const-string v9, "book_firstVisibleItem_index"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 106
    .local v7, "tmp_index":I
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    iput-object v8, p0, Lcom/zhangling/danti15/Lists;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 109
    new-instance v4, Lcom/zhangling/danti15/R$string;

    invoke-direct {v4}, Lcom/zhangling/danti15/R$string;-><init>()V

    .line 111
    .local v4, "r_s":Lcom/zhangling/danti15/R$string;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 113
    .local v2, "fields":[Ljava/lang/reflect/Field;
    :try_start_0
    const-class v8, Lcom/zhangling/danti15/R$string;

    const-string v9, "listView_size"

    invoke-static {v8, v9}, Lcom/zhangling/util/ReflectUtil;->getInt(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/zhangling/danti15/Lists;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/zhangling/danti15/Lists;->viewView_size:I

    .line 114
    iget v8, p0, Lcom/zhangling/danti15/Lists;->viewView_size:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Integer;)V

    .line 115
    iget v8, p0, Lcom/zhangling/danti15/Lists;->viewView_size:I

    invoke-static {v8}, Lcom/zhangling/util/Logs;->p(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    iget v8, p0, Lcom/zhangling/danti15/Lists;->viewView_size:I

    sget-object v9, Lcom/zhangling/danti15/Lists;->al_viewlist_title:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v8, v9, :cond_2

    .line 120
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v8, p0, Lcom/zhangling/danti15/Lists;->viewView_size:I

    if-lt v3, v8, :cond_4

    .line 127
    .end local v3    # "i":I
    :cond_2
    sget-object v8, Lcom/zhangling/danti15/Lists;->al_viewlist_title:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget v9, p0, Lcom/zhangling/danti15/Lists;->pageSize:I

    div-int/2addr v8, v9

    iput v8, p0, Lcom/zhangling/danti15/Lists;->total:I

    .line 128
    sget-object v8, Lcom/zhangling/danti15/Lists;->al_viewlist_title:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget v9, p0, Lcom/zhangling/danti15/Lists;->pageSize:I

    rem-int/2addr v8, v9

    if-lez v8, :cond_3

    .line 129
    iget v8, p0, Lcom/zhangling/danti15/Lists;->total:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/zhangling/danti15/Lists;->total:I

    .line 133
    :cond_3
    sget-object v8, Lcom/zhangling/danti15/Lists;->sp:Landroid/content/SharedPreferences;

    const-string v9, "book_last_view_page_index"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/zhangling/danti15/Lists;->book_last_view_page_index:I

    .line 134
    iget v8, p0, Lcom/zhangling/danti15/Lists;->book_last_view_page_index:I

    iput v8, p0, Lcom/zhangling/danti15/Lists;->pageIndex:I

    .line 135
    invoke-virtual {p0}, Lcom/zhangling/danti15/Lists;->initData()V

    .line 137
    iget-object v8, p0, Lcom/zhangling/danti15/Lists;->list:Landroid/widget/ListView;

    invoke-virtual {v8, v12}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 139
    iget-object v8, p0, Lcom/zhangling/danti15/Lists;->list:Landroid/widget/ListView;

    new-instance v9, Lcom/zhangling/danti15/Lists$2;

    invoke-direct {v9, p0}, Lcom/zhangling/danti15/Lists$2;-><init>(Lcom/zhangling/danti15/Lists;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 160
    iget-object v8, p0, Lcom/zhangling/danti15/Lists;->list:Landroid/widget/ListView;

    new-instance v9, Lcom/zhangling/danti15/Lists$3;

    invoke-direct {v9, p0}, Lcom/zhangling/danti15/Lists$3;-><init>(Lcom/zhangling/danti15/Lists;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 175
    iput v7, p0, Lcom/zhangling/danti15/Lists;->book_firstVisibleItem_index:I

    .line 176
    if-lez v7, :cond_5

    .line 177
    iget-object v8, p0, Lcom/zhangling/danti15/Lists;->list:Landroid/widget/ListView;

    sub-int v9, v7, v10

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setSelection(I)V

    .line 181
    :goto_2
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    .line 182
    .local v5, "timer":Ljava/util/Timer;
    new-instance v8, Lcom/zhangling/danti15/Lists$initPopupWindow;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/zhangling/danti15/Lists$initPopupWindow;-><init>(Lcom/zhangling/danti15/Lists;Lcom/zhangling/danti15/Lists$initPopupWindow;)V

    const-wide/16 v9, 0x3e8

    invoke-virtual {v5, v8, v9, v10}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 184
    return-void

    .line 116
    .end local v5    # "timer":Ljava/util/Timer;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    goto :goto_0

    .line 121
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "i":I
    :cond_4
    const-class v8, Lcom/zhangling/danti15/R$string;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "listView_title_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/zhangling/util/ReflectUtil;->getInt(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/zhangling/danti15/Lists;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "title":Ljava/lang/String;
    const-class v8, Lcom/zhangling/danti15/R$string;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "listView_content_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/zhangling/util/ReflectUtil;->getInt(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/zhangling/danti15/Lists;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "content":Ljava/lang/String;
    sget-object v8, Lcom/zhangling/danti15/Lists;->al_viewlist_title:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v8, Lcom/zhangling/danti15/Lists;->al_viewlist_content:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 179
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v6    # "title":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/zhangling/danti15/Lists;->list:Landroid/widget/ListView;

    invoke-virtual {v8, v7}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const-string v9, "ItemText"

    .line 381
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v2, "tmpItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v1, p0, Lcom/zhangling/danti15/Lists;->total:I

    if-lt v6, v1, :cond_0

    .line 389
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 390
    const v3, 0x7f030007

    .line 392
    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "ItemText"

    aput-object v9, v4, v8

    .line 394
    new-array v5, v5, [I

    const v1, 0x7f060011

    aput v1, v5, v8

    move-object v1, p0

    .line 389
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 397
    .local v0, "listItemAdapter":Landroid/widget/ListAdapter;
    packed-switch p1, :pswitch_data_0

    .line 411
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 383
    .end local v0    # "listItemAdapter":Landroid/widget/ListAdapter;
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 384
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ItemText"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u7b2c"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u9875"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 401
    .end local v7    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v0    # "listItemAdapter":Landroid/widget/ListAdapter;
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/zhangling/danti15/Lists;->lists:Lcom/zhangling/danti15/Lists;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 402
    const-string v3, "\u8bf7\u9009\u62e9\u5206\u9875"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 403
    new-instance v3, Lcom/zhangling/danti15/Lists$8;

    invoke-direct {v3, p0}, Lcom/zhangling/danti15/Lists$8;-><init>(Lcom/zhangling/danti15/Lists;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 409
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_1

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
