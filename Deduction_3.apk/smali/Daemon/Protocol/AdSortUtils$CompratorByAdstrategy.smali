.class LDaemon/Protocol/AdSortUtils$CompratorByAdstrategy;
.super Ljava/lang/Object;
.source "AdSortUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDaemon/Protocol/AdSortUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompratorByAdstrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;

    .prologue
    .line 13
    move-object v0, p1

    check-cast v0, LDaemon/Protocol/AdBase;

    move-object v2, v0

    .line 14
    .local v2, "file1":LDaemon/Protocol/AdBase;
    move-object v0, p2

    check-cast v0, LDaemon/Protocol/AdBase;

    move-object v3, v0

    .line 15
    .local v3, "file2":LDaemon/Protocol/AdBase;
    iget v4, v2, LDaemon/Protocol/AdBase;->strategy:I

    iget v5, v3, LDaemon/Protocol/AdBase;->strategy:I

    sub-int v1, v4, v5

    .line 17
    .local v1, "diff":I
    if-gez v1, :cond_0

    .line 18
    const/4 v4, -0x1

    .line 22
    :goto_0
    return v4

    .line 19
    :cond_0
    if-nez v1, :cond_1

    .line 20
    const/4 v4, 0x0

    goto :goto_0

    .line 22
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method
