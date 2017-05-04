.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachingState"
.end annotation


# instance fields
.field private mCurrentAllowedSequence:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 257
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    .line 256
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    return-void
.end method

.method private doEnter()V
    .locals 6

    .prologue
    .line 265
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get7(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 266
    .local v0, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .line 267
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    .line 266
    const v4, 0x43001

    .line 267
    const/4 v5, 0x0

    .line 266
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 268
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->resetDdsSwitchNeededFlag()V

    .line 272
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAutoAttachOnCreation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v2, "AttachingState executeAll due to autoAttach"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get5(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->executeAllRequests(I)V

    .line 264
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v1, "AttachingState: enter"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->doEnter()V

    .line 259
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-set2(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)Landroid/os/Message;

    .line 279
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    .line 287
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 383
    const/4 v6, 0x0

    .line 386
    .local v6, "retVal":Z
    :goto_0
    return v6

    .line 289
    .end local v6    # "retVal":Z
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;

    .line 290
    .local v2, "connectInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;
    iget-object v0, v2, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;->request:Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 291
    .local v0, "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    const-string/jumbo v7, "DcSwitchStateMachine.AttachingState: REQ_CONNECT"

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    .line 292
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AttachingState: REQ_CONNECT, apnRequest="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 294
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get7(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    .line 295
    .local v4, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v7, v4, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAutoAttachOnCreation()Z

    move-result v7

    if-nez v7, :cond_0

    .line 301
    :goto_1
    const/4 v6, 0x1

    .line 302
    .restart local v6    # "retVal":Z
    goto :goto_0

    .line 298
    .end local v6    # "retVal":Z
    :cond_0
    const-string/jumbo v7, "DcSwitchStateMachine processing due to autoAttach"

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->executeRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    goto :goto_1

    .line 305
    .end local v0    # "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .end local v2    # "connectInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;
    .end local v4    # "pb":Lcom/android/internal/telephony/PhoneBase;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 306
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eq v7, v8, :cond_2

    .line 307
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "EVENT_DATA_ALLOWED ignored arg1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", seq="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 308
    iget v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    .line 307
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    .line 333
    :cond_1
    :goto_2
    const/4 v6, 0x1

    .line 334
    .restart local v6    # "retVal":Z
    goto :goto_0

    .line 310
    .end local v6    # "retVal":Z
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get9(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Landroid/os/Message;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 312
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get9(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Landroid/os/Message;

    move-result-object v7

    invoke-static {v7}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    .line 313
    .local v5, "responseMsg":Landroid/os/Message;
    new-instance v7, Landroid/os/AsyncResult;

    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v7, v9, v9, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 314
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 316
    .end local v5    # "responseMsg":Landroid/os/Message;
    :cond_3
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_4

    .line 317
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "EVENT_DATA_ALLOWED failed, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    goto :goto_2

    .line 319
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v8, "EVENT_DATA_ALLOWED success"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    .line 320
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v7, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-set2(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)Landroid/os/Message;

    .line 325
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get7(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    .line 326
    .local v3, "dataState":I
    if-nez v3, :cond_1

    .line 327
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v8, "AttachingState: Already attached, move to ATTACHED state"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    .line 328
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap4(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 338
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "dataState":I
    :sswitch_2
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v8, "AttachingState requested abort/reset"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 339
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get6(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap4(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 340
    const/4 v6, 0x1

    .line 341
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    .line 345
    .end local v6    # "retVal":Z
    :sswitch_3
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v8, "AttachingState going to retry"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 346
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->doEnter()V

    .line 347
    const/4 v6, 0x1

    .line 348
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    .line 353
    .end local v6    # "retVal":Z
    :sswitch_4
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v8, "AttachingState: EVENT_DATA_ATTACHED"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 355
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap4(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 356
    const/4 v6, 0x1

    .line 357
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    .line 362
    .end local v6    # "retVal":Z
    :sswitch_5
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v8, "AttachingState: REQ_DISCONNECT_ALL"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 364
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get7(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    .line 365
    .restart local v4    # "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v7, v4, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAutoAttachOnCreation()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 369
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v8, "releasingAll due to autoAttach"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get5(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseAllRequests(I)V

    .line 373
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get6(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap4(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 374
    const/4 v6, 0x1

    .line 375
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    .line 287
    nop

    :sswitch_data_0
    .sparse-switch
        0x43001 -> :sswitch_1
        0x44000 -> :sswitch_0
        0x44001 -> :sswitch_3
        0x44002 -> :sswitch_5
        0x44007 -> :sswitch_4
        0x4400b -> :sswitch_2
    .end sparse-switch
.end method