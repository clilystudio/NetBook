.class public Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Names;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:Ljava/lang/String;

.field private names:[Ljava/lang/String;

.field final synthetic this$0:Lcom/ushaqi/zhuishushenqi/model/TimelineResult;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/TimelineResult;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Names;->this$0:Lcom/ushaqi/zhuishushenqi/model/TimelineResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Names;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Names;->names:[Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Names;->id:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setNames([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Names;->names:[Ljava/lang/String;

    .line 84
    return-void
.end method
