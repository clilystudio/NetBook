.class public Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private floor:I

.field final synthetic this$0:Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;->this$0:Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFloor()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;->floor:I

    return v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;->content:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setFloor(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;->floor:I

    .line 35
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;->_id:Ljava/lang/String;

    .line 43
    return-void
.end method
