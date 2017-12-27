.class LDaemon/DownLoad/DBOpenHelper$AD_INFO;
.super Ljava/lang/Object;
.source "DBOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDaemon/DownLoad/DBOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AD_INFO"
.end annotation


# static fields
.field public static final DEFAULT_INT_VALUE:I = 0x0

.field public static final DEFAULT_STRING_VALUE:Ljava/lang/String; = ""


# instance fields
.field public mContent:Ljava/lang/String;

.field public mDownloadFlag:I

.field public mPackNum:I

.field public mPriority:I

.field public mPushFlag:I

.field public mSavedPath:Ljava/lang/String;

.field public mSpNumber:Ljava/lang/String;

.field public mStrategy:I

.field public mTitle:Ljava/lang/String;

.field public mUri:Ljava/lang/String;

.field public mVersion:I

.field final synthetic this$0:LDaemon/DownLoad/DBOpenHelper;


# direct methods
.method constructor <init>(LDaemon/DownLoad/DBOpenHelper;III)V
    .locals 0
    .param p2, "pushFlag"    # I
    .param p3, "version"    # I
    .param p4, "packNum"    # I

    .prologue
    .line 150
    iput-object p1, p0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->this$0:LDaemon/DownLoad/DBOpenHelper;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p2, p0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mPushFlag:I

    .line 148
    iput p3, p0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mVersion:I

    .line 149
    iput p4, p0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mPackNum:I

    return-void
.end method

.method constructor <init>(LDaemon/DownLoad/DBOpenHelper;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "savedPath"    # Ljava/lang/String;
    .param p4, "downloadFlag"    # I

    .prologue
    .line 144
    iput-object p1, p0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->this$0:LDaemon/DownLoad/DBOpenHelper;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mUri:Ljava/lang/String;

    .line 142
    iput-object p3, p0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mSavedPath:Ljava/lang/String;

    .line 143
    iput p4, p0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mDownloadFlag:I

    return-void
.end method

.method constructor <init>(LDaemon/DownLoad/DBOpenHelper;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 0
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "savedPath"    # Ljava/lang/String;
    .param p4, "version"    # I
    .param p5, "packNum"    # I
    .param p6, "spNumber"    # Ljava/lang/String;
    .param p7, "title"    # Ljava/lang/String;
    .param p8, "content"    # Ljava/lang/String;
    .param p9, "pushFlag"    # I
    .param p10, "downloadFlag"    # I
    .param p11, "priority"    # I
    .param p12, "strategy"    # I

    .prologue
    .line 138
    iput-object p1, p0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->this$0:LDaemon/DownLoad/DBOpenHelper;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p2, p0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mUri:Ljava/lang/String;

    .line 128
    iput-object p3, p0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mSavedPath:Ljava/lang/String;

    .line 129
    iput p4, p0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mVersion:I

    .line 130
    iput p5, p0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mPackNum:I

    .line 131
    iput-object p6, p0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mSpNumber:Ljava/lang/String;

    .line 132
    iput-object p7, p0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mTitle:Ljava/lang/String;

    .line 133
    iput-object p8, p0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mContent:Ljava/lang/String;

    .line 134
    iput p9, p0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mPushFlag:I

    .line 135
    iput p10, p0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mDownloadFlag:I

    .line 136
    iput p11, p0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mPriority:I

    .line 137
    iput p12, p0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mStrategy:I

    return-void
.end method
