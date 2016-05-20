.class public Lcom/ushaqi/zhuishushenqi/db/AccountInfo;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "AccountInfo"
.end annotation


# instance fields
.field private prevUnimpNotif:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "prev_unimp_notif"
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "token"
        unique = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;->token:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;->prevUnimpNotif:I

    .line 29
    return-void
.end method

.method public static getByToken(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/AccountInfo;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "token = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;

    goto :goto_0
.end method

.method public static getOrCreate(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/AccountInfo;
    .locals 1

    .prologue
    .line 69
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;->getByToken(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/AccountInfo;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;-><init>()V

    .line 74
    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;->setToken(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPreUnimpCount(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 51
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    const-string v2, "token = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v1

    .line 52
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 55
    :goto_0
    return v0

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;->getPrevUnimpNotif()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getPrevUnimpNotif()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;->prevUnimpNotif:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setPrevUnimpNotif(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;->prevUnimpNotif:I

    .line 48
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;->token:Ljava/lang/String;

    .line 37
    return-void
.end method
