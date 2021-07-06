package bb.project.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString

public class TrinfoDTO {
	private int bno;
	private int type;
	private String loc;
	private String trtitle;
	private String adrs;
	private String trdetail;
	private String hp;
	private String time;
	private String trimg;
	private String mno;
	private int hits;

}
