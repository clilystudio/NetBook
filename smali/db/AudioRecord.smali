.class public Lcom/ushaqi/zhuishushenqi/db/AudioRecord;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "AudioRecord"
.end annotation


# instance fields
.field private bookId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "bookId"
    .end annotation
.end field

.field private desc:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "desc"
    .end annotation
.end field

.field private imgUrl:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "imgUrl"
    .end annotation
.end field

.field private lastRead:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "lastRead"
    .end annotation
.end field

.field private lastUpdate:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "lastUpdate"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "name"
    .end annotation
.end field

.field private top:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "top"
    .end annotation
.end field

.field private track:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "track"
    .end annotation
.end field

.field private updateReaded:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "updateReaded"
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "userId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public static cancelFollow(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, " bookId = ? "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 72
    return-void
.end method

.method public static find(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/AudioRecord;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    invoke-virtual {v0}, Lcom/activeandroid/query/Select;->distinct()Lcom/activeandroid/query/Select;

    move-result-object v0

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "bookId = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 95
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static findAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/AudioRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    invoke-virtual {v0}, Lcom/activeandroid/query/Select;->distinct()Lcom/activeandroid/query/Select;

    move-result-object v0

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isFollowed(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 61
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, " bookId = ? "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->exists()Z

    move-result v0

    return v0
.end method

.method public static save2DB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 5

    .prologue
    .line 139
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;-><init>()V

    .line 140
    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->setBookId(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->setName(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, p2}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->setDesc(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, p3}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->setImgUrl(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, p4}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->setTrack(I)V

    .line 145
    invoke-virtual {v0, p5, p6}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->setLastUpdate(J)V

    .line 147
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->setLastRead(J)V

    .line 148
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->save()Ljava/lang/Long;

    .line 149
    return-void
.end method

.method public static updateLastRead(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 125
    new-instance v0, Lcom/activeandroid/util/SQLiteUtils;

    invoke-direct {v0}, Lcom/activeandroid/util/SQLiteUtils;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE AudioRecord SET lastRead = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE bookId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/activeandroid/util/SQLiteUtils;->execSql(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public static updateLastTime(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lcom/activeandroid/util/SQLiteUtils;

    invoke-direct {v0}, Lcom/activeandroid/util/SQLiteUtils;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE AudioRecord SET lastUpdate ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE bookId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/activeandroid/util/SQLiteUtils;->execSql(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static updateRecordRead(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Lcom/activeandroid/util/SQLiteUtils;

    invoke-direct {v0}, Lcom/activeandroid/util/SQLiteUtils;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "UPDATE AudioRecord SET updateReaded = "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE bookId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/activeandroid/util/SQLiteUtils;->execSql(Ljava/lang/String;)V

    .line 117
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateTrack(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/activeandroid/util/SQLiteUtils;

    invoke-direct {v0}, Lcom/activeandroid/util/SQLiteUtils;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE AudioRecord SET track ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE bookId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/activeandroid/util/SQLiteUtils;->execSql(Ljava/lang/String;)V

    .line 82
    return-void
.end method


# virtual methods
.method public convert2Album()Lcom/ximalaya/ting/android/opensdk/model/album/Album;
    .locals 4

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 231
    :try_start_0
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->bookId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->setId(J)V

    .line 235
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->setAlbumTitle(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->setAlbumIntro(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->setCoverUrlSmall(Ljava/lang/String;)V

    .line 238
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLastRead()J
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->lastRead:J

    return-wide v0
.end method

.method public getLastUpdate()J
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->lastUpdate:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->track:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->top:Z

    return v0
.end method

.method public isUpdateReaded()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->updateReaded:Z

    return v0
.end method

.method public setBookId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->bookId:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->desc:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->imgUrl:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setLastRead(J)V
    .locals 1

    .prologue
    .line 212
    iput-wide p1, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->lastRead:J

    .line 213
    return-void
.end method

.method public setLastUpdate(J)V
    .locals 1

    .prologue
    .line 180
    iput-wide p1, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->lastUpdate:J

    .line 181
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->name:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setTop(Z)V
    .locals 0

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->top:Z

    .line 221
    return-void
.end method

.method public setTrack(I)V
    .locals 0

    .prologue
    .line 172
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->track:I

    .line 173
    return-void
.end method

.method public setUpdateReaded(Z)V
    .locals 0

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->updateReaded:Z

    .line 247
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->userId:Ljava/lang/String;

    .line 157
    return-void
.end method
