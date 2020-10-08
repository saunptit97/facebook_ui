import 'package:flutter/material.dart';

class RightPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: 350,
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Người liên hệ",
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xffb0b3b8),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.photo_camera,
                      color: Color(0xffb0b3b8),
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.search,
                      color: Color(0xffb0b3b8),
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Color(0xffb0b3b8),
                      size: 20,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.separated(
              itemCount: 10,
              shrinkWrap: true,
              primary: false,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://scontent.fhph1-2.fna.fbcdn.net/v/t1.0-9/78104667_1035835756754165_909303872881688576_o.jpg?_nc_cat=106&_nc_sid=09cbfe&_nc_ohc=TSYz38IpJ1EAX-wsJt3&_nc_ht=scontent.fhph1-2.fna&oh=af224b83fb427fd701a10a43c0a23259&oe=5FA4B213",
                      ),
                      radius: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Nguyễn Thế Sáu",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 15,
                );
              },
            ),
            Divider(
              thickness: 0.3,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Cuộc trò chuyện nhóm",
              style: TextStyle(
                fontSize: 17,
                color: Color(0xffb0b3b8),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.separated(
              itemCount: 5,
              shrinkWrap: true,
              primary: false,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://i2.wp.com/gamologi.com/wp-content/uploads/2020/06/lol-wrf-compressor.jpg",
                      ),
                      radius: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Nhóm LOL",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 15,
                );
              },
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xff373737),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Tạo nhóm mới",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
