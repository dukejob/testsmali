.class Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ARFromAwarenessImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ARChangeReceiver"
.end annotation


# instance fields
.field private mLastEventType:I

.field private mLastMotionType:I

.field private mLastTimeStamp:J

.field private final service:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)V
    .locals 2
    .param p1, "service"    # Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 227
    iput v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;->mLastMotionType:I

    .line 228
    iput v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;->mLastEventType:I

    .line 229
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;->mLastTimeStamp:J

    .line 232
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;->service:Ljava/lang/ref/WeakReference;

    .line 233
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 237
    if-nez p2, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "action":Ljava/lang/String;
    const-string v8, "com.huawei.opcollect.action.ARChange"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 242
    const-string v8, "action_string"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "strExtra":Ljava/lang/String;
    invoke-static {v5}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->activityName2Type(Ljava/lang/String;)I

    move-result v3

    .line 245
    .local v3, "motionType":I
    const-string v8, "eventType"

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 247
    .local v1, "eventType":I
    const-string v8, "dataSensorTimeStamp"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 249
    .local v6, "timeStamp":J
    iget v8, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;->mLastMotionType:I

    if-ne v8, v3, :cond_2

    iget v8, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;->mLastEventType:I

    if-ne v8, v1, :cond_2

    iget-wide v8, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;->mLastTimeStamp:J

    cmp-long v8, v6, v8

    if-eqz v8, :cond_0

    .line 252
    :cond_2
    iput v3, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;->mLastMotionType:I

    .line 253
    iput v1, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;->mLastEventType:I

    .line 254
    iput-wide v6, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;->mLastTimeStamp:J

    .line 256
    const-string v8, "ARFromAwarenessImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "motionType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " eventType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " timeStamp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v8, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;

    .line 259
    .local v2, "impl":Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;
    if-eqz v2, :cond_0

    .line 262
    invoke-static {v2}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->access$100(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 263
    :try_start_0
    invoke-static {v2}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->access$200(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)Landroid/os/Handler;

    move-result-object v8

    if-nez v8, :cond_3

    .line 264
    monitor-exit v9

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 266
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 267
    .local v4, "msg":Landroid/os/Message;
    const/4 v8, 0x3

    iput v8, v4, Landroid/os/Message;->what:I

    .line 268
    iput v3, v4, Landroid/os/Message;->arg1:I

    .line 269
    iput v1, v4, Landroid/os/Message;->arg2:I

    .line 270
    invoke-static {v2}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->access$200(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 271
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
