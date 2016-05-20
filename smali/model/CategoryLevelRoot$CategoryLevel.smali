.class public Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot$CategoryLevel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private major:Ljava/lang/String;

.field private mins:[Ljava/lang/String;

.field final synthetic this$0:Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot$CategoryLevel;->this$0:Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMajor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot$CategoryLevel;->major:Ljava/lang/String;

    return-object v0
.end method

.method public getMins()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot$CategoryLevel;->mins:[Ljava/lang/String;

    return-object v0
.end method

.method public setMajor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot$CategoryLevel;->major:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setMins([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot$CategoryLevel;->mins:[Ljava/lang/String;

    .line 56
    return-void
.end method
