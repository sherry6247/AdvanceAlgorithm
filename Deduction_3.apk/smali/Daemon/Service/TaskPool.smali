.class public LDaemon/Service/TaskPool;
.super Ljava/lang/Object;
.source "TaskPool.java"


# static fields
.field private static volatile instance:LDaemon/Service/TaskPool;


# instance fields
.field private executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, LDaemon/Service/TaskPool;

    invoke-direct {v0}, LDaemon/Service/TaskPool;-><init>()V

    sput-object v0, LDaemon/Service/TaskPool;->instance:LDaemon/Service/TaskPool;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 15
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, LDaemon/Service/TaskPool;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 18
    return-void
.end method

.method public static declared-synchronized getInstance()LDaemon/Service/TaskPool;
    .locals 2

    .prologue
    .line 23
    const-class v0, LDaemon/Service/TaskPool;

    monitor-enter v0

    :try_start_0
    sget-object v1, LDaemon/Service/TaskPool;->instance:LDaemon/Service/TaskPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addConnectTask(LDaemon/Base/HttpBase;JJ)Ljava/lang/Runnable;
    .locals 8
    .param p1, "httpbase"    # LDaemon/Base/HttpBase;
    .param p2, "startTime"    # J
    .param p4, "detalTime"    # J

    .prologue
    .line 28
    iget-object v7, p0, LDaemon/Service/TaskPool;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    monitor-enter v7

    .line 29
    :try_start_0
    const-string v0, "TaskPool"

    const-string v2, "addConnectTask"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v1, LDaemon/Service/ServerConnecter;

    sget-object v0, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    invoke-direct {v1, v0, p1}, LDaemon/Service/ServerConnecter;-><init>(Landroid/content/Context;LDaemon/Base/HttpBase;)V

    .line 31
    .local v1, "task":Ljava/lang/Runnable;
    iget-object v0, p0, LDaemon/Service/TaskPool;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 32
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, p2

    move-wide v4, p4

    .line 31
    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 33
    monitor-exit v7

    return-object v1

    .line 28
    .end local v1    # "task":Ljava/lang/Runnable;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addConnectTask(LDaemon/Base/HttpBase;)V
    .locals 4
    .param p1, "httpbase"    # LDaemon/Base/HttpBase;

    .prologue
    .line 38
    iget-object v0, p0, LDaemon/Service/TaskPool;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, LDaemon/Service/TaskPool;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, LDaemon/Service/ServerConnecter;

    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, LDaemon/Service/ServerConnecter;-><init>(Landroid/content/Context;LDaemon/Base/HttpBase;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 38
    monitor-exit v0

    .line 41
    return-void

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addPushTask(J)Ljava/lang/Runnable;
    .locals 8
    .param p1, "detalTime"    # J

    .prologue
    .line 44
    iget-object v7, p0, LDaemon/Service/TaskPool;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    monitor-enter v7

    .line 45
    :try_start_0
    new-instance v1, LDaemon/Service/ContentPusher;

    invoke-direct {v1}, LDaemon/Service/ContentPusher;-><init>()V

    .line 46
    .local v1, "task":Ljava/lang/Runnable;
    iget-object v0, p0, LDaemon/Service/TaskPool;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 47
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, p1

    move-wide v4, p1

    .line 46
    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 48
    monitor-exit v7

    return-object v1

    .line 44
    .end local v1    # "task":Ljava/lang/Runnable;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelTask(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 53
    iget-object v0, p0, LDaemon/Service/TaskPool;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, LDaemon/Service/TaskPool;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
