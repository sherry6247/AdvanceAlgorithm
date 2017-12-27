.class public Lcom/zhangling/danti15/Main;
.super Lcom/zhangling/danti15/BaseAActivity;
.source "Main.java"


# static fields
.field private static handler:Landroid/os/Handler;

.field static main:Lcom/zhangling/danti15/Main;

.field private static tabHost:Landroid/widget/TabHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/zhangling/danti15/Main;->main:Lcom/zhangling/danti15/Main;

    .line 25
    sput-object v0, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    .line 152
    new-instance v0, Lcom/zhangling/danti15/Main$1;

    invoke-direct {v0}, Lcom/zhangling/danti15/Main$1;-><init>()V

    sput-object v0, Lcom/zhangling/danti15/Main;->handler:Landroid/os/Handler;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/zhangling/danti15/BaseAActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method public static sendMsg(I)V
    .locals 2
    .param p0, "flag"    # I

    .prologue
    .line 168
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 169
    .local v0, "msg":Landroid/os/Message;
    iput p0, v0, Landroid/os/Message;->what:I

    .line 170
    sget-object v1, Lcom/zhangling/danti15/Main;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 171
    return-void
.end method


# virtual methods
.method public exitDialog()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f03000c

    const/high16 v9, -0x10000

    const/high16 v8, 0x41b80000    # 23.0f

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 30
    invoke-virtual {p0, v7}, Lcom/zhangling/danti15/Main;->requestWindowFeature(I)Z

    .line 35
    invoke-super {p0, p1}, Lcom/zhangling/danti15/BaseAActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-super {p0, v4}, Lcom/zhangling/danti15/BaseAActivity;->initData(Ljava/lang/String;)V

    .line 38
    sput-object p0, Lcom/zhangling/danti15/Main;->main:Lcom/zhangling/danti15/Main;

    .line 39
    invoke-virtual {p0}, Lcom/zhangling/danti15/Main;->getTabHost()Landroid/widget/TabHost;

    move-result-object v4

    sput-object v4, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    .line 41
    sget-object v4, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setBackgroundColor(I)V

    .line 42
    sget-object v4, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    const v5, 0x7f020002

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setBackgroundResource(I)V

    .line 43
    sget-object v4, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 44
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v5, "1.5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    sget-object v4, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TabWidget;->setBackgroundColor(I)V

    .line 46
    sget-object v4, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    sget-object v5, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    const-string v6, "home"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    const-string v6, "\u9996\u9875"

    invoke-virtual {p0}, Lcom/zhangling/danti15/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020014

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/zhangling/danti15/Lists;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 47
    sget-object v4, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    sget-object v5, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    const-string v6, "booking"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    const-string v6, "\u6536\u85cf"

    invoke-virtual {p0}, Lcom/zhangling/danti15/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020015

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/zhangling/danti15/Booking;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 48
    sget-object v4, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    sget-object v5, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    const-string v6, "history"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    const-string v6, "\u5386\u53f2"

    invoke-virtual {p0}, Lcom/zhangling/danti15/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020016

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/zhangling/danti15/History;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 49
    sget-object v4, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    sget-object v5, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    const-string v6, "query"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    const-string v6, "\u641c\u7d22"

    invoke-virtual {p0}, Lcom/zhangling/danti15/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020017

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/zhangling/danti15/Query;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 124
    :goto_0
    sget-object v4, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    new-instance v5, Lcom/zhangling/danti15/Main$2;

    invoke-direct {v5, p0}, Lcom/zhangling/danti15/Main$2;-><init>(Lcom/zhangling/danti15/Main;)V

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 146
    return-void

    .line 52
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v10, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 53
    .local v0, "layout":Landroid/widget/RelativeLayout;
    const v4, 0x7f06002d

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 54
    .local v3, "usetTabLabel":Landroid/widget/TextView;
    const-string v4, "\u4e3b\u9875"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 56
    invoke-virtual {p0}, Lcom/zhangling/danti15/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 58
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 59
    .local v2, "tp":Landroid/text/TextPaint;
    invoke-virtual {v2, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 60
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    :try_start_0
    sget-object v4, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    const-string v5, "tab1"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 63
    .local v1, "tab":Landroid/widget/TabHost$TabSpec;
    const-string v4, "setIndicator"

    const-class v5, Landroid/view/View;

    invoke-static {v1, v4, v5, v0}, Lcom/zhangling/util/ReflectUtil;->runMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 64
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/zhangling/danti15/Lists;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 65
    sget-object v4, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 70
    .end local v1    # "tab":Landroid/widget/TabHost$TabSpec;
    :goto_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v10, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "layout":Landroid/widget/RelativeLayout;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 71
    .restart local v0    # "layout":Landroid/widget/RelativeLayout;
    const v4, 0x7f06002d

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "usetTabLabel":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 72
    .restart local v3    # "usetTabLabel":Landroid/widget/TextView;
    const-string v4, "\u6536\u85cf"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 74
    invoke-virtual {p0}, Lcom/zhangling/danti15/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 76
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 77
    invoke-virtual {v2, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 78
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    :try_start_1
    sget-object v4, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    const-string v5, "tab2"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 81
    .restart local v1    # "tab":Landroid/widget/TabHost$TabSpec;
    const-string v4, "setIndicator"

    const-class v5, Landroid/view/View;

    invoke-static {v1, v4, v5, v0}, Lcom/zhangling/util/ReflectUtil;->runMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 82
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/zhangling/danti15/Booking;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 83
    sget-object v4, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 88
    .end local v1    # "tab":Landroid/widget/TabHost$TabSpec;
    :goto_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v10, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "layout":Landroid/widget/RelativeLayout;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 89
    .restart local v0    # "layout":Landroid/widget/RelativeLayout;
    const v4, 0x7f06002d

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "usetTabLabel":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 90
    .restart local v3    # "usetTabLabel":Landroid/widget/TextView;
    const-string v4, "\u5386\u53f2"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 92
    invoke-virtual {p0}, Lcom/zhangling/danti15/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 94
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 95
    invoke-virtual {v2, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 96
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    :try_start_2
    sget-object v4, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    const-string v5, "tab3"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 99
    .restart local v1    # "tab":Landroid/widget/TabHost$TabSpec;
    const-string v4, "setIndicator"

    const-class v5, Landroid/view/View;

    invoke-static {v1, v4, v5, v0}, Lcom/zhangling/util/ReflectUtil;->runMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 100
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/zhangling/danti15/History;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 101
    sget-object v4, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 105
    .end local v1    # "tab":Landroid/widget/TabHost$TabSpec;
    :goto_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v10, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "layout":Landroid/widget/RelativeLayout;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 106
    .restart local v0    # "layout":Landroid/widget/RelativeLayout;
    const v4, 0x7f06002d

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "usetTabLabel":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 107
    .restart local v3    # "usetTabLabel":Landroid/widget/TextView;
    const-string v4, "\u641c\u7d22"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 109
    invoke-virtual {p0}, Lcom/zhangling/danti15/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 111
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 112
    invoke-virtual {v2, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 113
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    :try_start_3
    sget-object v4, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    const-string v5, "tab4"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 116
    .restart local v1    # "tab":Landroid/widget/TabHost$TabSpec;
    const-string v4, "setIndicator"

    const-class v5, Landroid/view/View;

    invoke-static {v1, v4, v5, v0}, Lcom/zhangling/util/ReflectUtil;->runMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 117
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/zhangling/danti15/Query;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 118
    sget-object v4, Lcom/zhangling/danti15/Main;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 119
    .end local v1    # "tab":Landroid/widget/TabHost$TabSpec;
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 102
    :catch_1
    move-exception v4

    goto :goto_3

    .line 84
    :catch_2
    move-exception v4

    goto/16 :goto_2

    .line 66
    :catch_3
    move-exception v4

    goto/16 :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 175
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 176
    invoke-static {v1}, Lcom/zhangling/danti15/Main;->sendMsg(I)V

    move v0, v1

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
