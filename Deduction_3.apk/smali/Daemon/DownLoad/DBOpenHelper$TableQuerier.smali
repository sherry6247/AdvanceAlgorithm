.class interface abstract LDaemon/DownLoad/DBOpenHelper$TableQuerier;
.super Ljava/lang/Object;
.source "DBOpenHelper.java"

# interfaces
.implements LDaemon/DownLoad/DBOpenHelper$TableOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDaemon/DownLoad/DBOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TableQuerier"
.end annotation


# virtual methods
.method public abstract getQueryData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end method
