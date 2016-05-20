.class public Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private activity:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;

.field private gameGroup:Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

.field private id:Ljava/lang/String;

.field private module:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method


# virtual methods
.method public getActivity()Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->activity:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;

    return-object v0
.end method

.method public getGameGroup()Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->gameGroup:Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/ushaqi/zhuishushenqi/model/ModuleType;
    .locals 6

    .prologue
    .line 85
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->values()[Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 86
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->module:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    return-object v3

    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "module "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->module:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGameGroup(Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->gameGroup:Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    .line 82
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->id:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->module:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->title:Ljava/lang/String;

    .line 74
    return-void
.end method
